import torch
import os
import pickle
from PIL import Image
import json
from maskrcnn_benchmark.structures.bounding_box import BoxList
import numpy as np

class VG_Gen_Img_Dataset(torch.utils.data.Dataset):
    def __init__(self, cfg, round_num, transforms):
        self.img_folder_name = cfg.GEN_IMG.FOLDER_NAME
        self.img_folder = os.path.join(cfg.GEN_IMG.BASE_DIR, self.img_folder_name)
        self.round_num = round_num
        self.transforms = transforms
        self.i_resolution = cfg.GEN_IMG.RESOLUTION
        self.val_anno_data = pickle.load(open(os.path.join(cfg.GEN_IMG.ANNO_DIR, "validation_data_bbox_dbox32_np.pkl"), "rb"))
        self.filenames = load_filenames(self.val_anno_data, self.img_folder_name, self.img_folder, self.round_num)

        # dictionary comparison
        my_idx_to_word = pickle.load(open(os.path.join(cfg.GEN_IMG.ANNO_DIR, "idx_to_word.pkl"), "rb"))
        self.my_ind_to_classes = my_idx_to_word["ind_to_classes"]
        my_ind_to_classes_cmp = ['__background__']
        my_ind_to_classes_cmp.extend(self.my_ind_to_classes[:-1])
        my_ind_to_predicates = my_idx_to_word["ind_to_predicates"]

        dict_file = "datasets/vg/VG-SGG-dicts-with-attri.json"
        self.ind_to_classes, self.ind_to_predicates, _ = load_info(dict_file) # contiguous 151, 51 containing __background__
        assert (my_ind_to_classes_cmp == self.ind_to_classes)
        assert (my_ind_to_predicates == self.ind_to_predicates)
        self.categories = {i : self.ind_to_classes[i] for i in range(len(self.ind_to_classes))}

    def __len__(self):
        return len(self.val_anno_data)

    def __getitem__(self, index):
        file_name = self.val_anno_data[index]['file_name']
        file_name_id = file_name.split('.')[0]

        if self.img_folder_name == "validation_image_gt":
            img_path = os.path.join(self.img_folder, file_name_id+".png")
        else:
            img_path = os.path.join(self.img_folder, file_name_id+"_"+str(self.round_num)+".png")
        assert (img_path == self.filenames[index])

        img = Image.open(img_path).convert("RGB")
        assert (img.size == (self.i_resolution, self.i_resolution))
        target = self.get_groundtruth(index)

        if self.transforms is not None:
            img, target = self.transforms(img, target)
        
        return img, target, index

    def get_img_info(self, index):
        return {"width": self.i_resolution, "height": self.i_resolution}

    def get_groundtruth(self, index, evaluation=False):
        item = self.val_anno_data[index]
        node_bboxes_xcyc = torch.tensor(item['node_bboxes_xcyc'])
        node_bboxes_xyxy = torch.zeros(node_bboxes_xcyc.shape, dtype=node_bboxes_xcyc.dtype)
        node_bboxes_xyxy[:, 0] = (node_bboxes_xcyc[:, 0] - node_bboxes_xcyc[:, 2]/2).clamp(0, 1)
        node_bboxes_xyxy[:, 1] = (node_bboxes_xcyc[:, 1] - node_bboxes_xcyc[:, 3]/2).clamp(0, 1)
        node_bboxes_xyxy[:, 2] = (node_bboxes_xcyc[:, 0] + node_bboxes_xcyc[:, 2]/2).clamp(0, 1)
        node_bboxes_xyxy[:, 3] = (node_bboxes_xcyc[:, 1] + node_bboxes_xcyc[:, 3]/2).clamp(0, 1)
        node_bboxes_xyxy = node_bboxes_xyxy * self.i_resolution
        assert (torch.all(node_bboxes_xyxy[:, 2] >= node_bboxes_xyxy[:, 0]))
        assert (torch.all(node_bboxes_xyxy[:, 3] >= node_bboxes_xyxy[:, 1]))

        target = BoxList(node_bboxes_xyxy, (self.i_resolution, self.i_resolution), 'xyxy') # xyxy

        cmp_list = [self.my_ind_to_classes[entry] == self.ind_to_classes[entry+1] for entry in item['node_labels'].tolist()]
        assert (torch.tensor(cmp_list).all())

        target.add_field("labels", torch.from_numpy(item['node_labels'] + 1))
        target.add_field("attributes", torch.zeros(item['node_labels'].shape[0], 10, dtype=torch.int64))
        target.add_field("relation", torch.from_numpy(item['edge_map']), is_triplet=True)

        if evaluation:
            target = target.clip_to_image(remove_empty=False)

            relation = []
            subj_node_idxes, obj_node_idxes = np.where(item['edge_map'])
            for subj_idx, obj_idx in zip(subj_node_idxes, obj_node_idxes):
                relation.append([subj_idx, obj_idx, item['edge_map'][subj_idx, obj_idx]])

            target.add_field("relation_tuple", torch.LongTensor(relation)) # for evaluation
            return target
        else:
            target = target.clip_to_image(remove_empty=True)
            return target


def load_filenames(val_anno_data, img_folder_name, img_folder, round_num):
    filenames = []
    for item in val_anno_data:
        file_name = item['file_name']
        file_name_id = file_name.split('.')[0]
        if img_folder_name == "validation_image_gt":
            filenames.append(os.path.join(img_folder, file_name_id+".png"))
        else:
            filenames.append(os.path.join(img_folder, file_name_id+"_"+str(round_num)+".png"))
    return filenames


def load_info(dict_file, add_bg=True):
    """
    Loads the file containing the visual genome label meanings
    """
    info = json.load(open(dict_file, 'r'))
    if add_bg:
        info['label_to_idx']['__background__'] = 0
        info['predicate_to_idx']['__background__'] = 0
        info['attribute_to_idx']['__background__'] = 0

    class_to_ind = info['label_to_idx']
    predicate_to_ind = info['predicate_to_idx']
    attribute_to_ind = info['attribute_to_idx']
    ind_to_classes = sorted(class_to_ind, key=lambda k: class_to_ind[k])
    ind_to_predicates = sorted(predicate_to_ind, key=lambda k: predicate_to_ind[k])
    ind_to_attributes = sorted(attribute_to_ind, key=lambda k: attribute_to_ind[k])

    return ind_to_classes, ind_to_predicates, ind_to_attributes


def build_gen_img_dataset(cfg, transforms):
    datasets = []
    for round_num in range(cfg.GEN_IMG.NUM_ROUNDS):
        dataset = VG_Gen_Img_Dataset(cfg, round_num, transforms)
        datasets.append(dataset)
    return datasets