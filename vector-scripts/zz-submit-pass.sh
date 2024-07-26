echo 1
sbatch gen-img-predcls-val-999-template-pass.sh 11011 "validation_data_bbox_dbox32_np.pkl" "vg-a40-single-run_0-1234" "validation_image_gt"
sleep 1s
echo 2
sbatch gen-img-predcls-val-999-template-pass.sh 11021 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-a40-object-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 3
sbatch gen-img-predcls-val-999-template-pass.sh 11031 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-a40-object-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 4
sbatch gen-img-predcls-val-999-template-pass.sh 11041 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-debug300-a40-object-original-iter_144600-run_0-1234" "generated_image"
sleep 1s
echo 5
sbatch gen-img-predcls-val-999-template-pass.sh 11051 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-a40-object-ordered-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 6
sbatch gen-img-predcls-val-999-template-pass.sh 11061 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-a40-object-ordered-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 7
sbatch gen-img-predcls-val-999-template-pass.sh 11071 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-obj_rel-random-a40-obj_rel-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 8
sbatch gen-img-predcls-val-999-template-pass.sh 11081 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-obj_rel-random-a40-obj_rel-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 9
sbatch gen-img-predcls-val-999-template-pass.sh 11091 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-relation-random-a40-relation-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 10
sbatch gen-img-predcls-val-999-template-pass.sh 11101 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-relation-random-a40-relation-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 11
sbatch gen-img-predcls-val-999-template-pass.sh 11111 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-object-ordered-a40-object-ordered-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 12
sbatch gen-img-predcls-val-999-template-pass.sh 11121 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-object-ordered-a40-object-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 13
sbatch gen-img-predcls-val-999-template-pass.sh 11131 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-object-original-a40-object-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 14
sbatch gen-img-predcls-val-999-template-pass.sh 11141 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-object-original-a40-object-ordered-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 15
sbatch gen-img-predcls-val-999-template-pass.sh 11151 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-object-random-a40-object-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 16
sbatch gen-img-predcls-val-999-template-pass.sh 11161 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-object-random-a40-object-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 17
sbatch gen-img-predcls-val-999-template-pass.sh 11171 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-object-random-debug300-a40-object-original-iter_144600-run_0-1234" "generated_image"
sleep 1s
echo 18
sbatch gen-img-predcls-val-999-template-pass.sh 11181 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-object-random-a40-object-ordered-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 19
sbatch gen-img-predcls-val-999-template-pass.sh 11191 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-object-random-a40-object-ordered-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 20
sbatch gen-img-predcls-val-999-template-pass.sh 11201 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-object-unique-ordered-a40-object-unique-ordered-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 21
sbatch gen-img-predcls-val-999-template-pass.sh 11211 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-object-unique-ordered-a40-object-unique-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 22
sbatch gen-img-predcls-val-999-template-pass.sh 11221 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-object-unique-random-a40-object-unique-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 23
sbatch gen-img-predcls-val-999-template-pass.sh 11231 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-object-unique-random-a40-object-unique-ordered-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 24
sbatch gen-img-predcls-val-999-template-pass.sh 11241 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-obj_rel-random-a40-obj_rel-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 25
sbatch gen-img-predcls-val-999-template-pass.sh 11251 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-obj_rel-random-a40-obj_rel-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 26
sbatch gen-img-predcls-val-999-template-pass.sh 11261 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-obj_rel_word-ordered-a40-obj_rel_word-ordered-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 27
sbatch gen-img-predcls-val-999-template-pass.sh 11271 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-obj_rel_word-ordered-a40-obj_rel_word-ordered-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 28
sbatch gen-img-predcls-val-999-template-pass.sh 11281 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-obj_rel_word-unique-ordered-a40-obj_rel_word-unique-ordered-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 29
sbatch gen-img-predcls-val-999-template-pass.sh 11291 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-obj_rel_word-unique-ordered-a40-obj_rel_word-unique-ordered-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 30
sbatch gen-img-predcls-val-999-template-pass.sh 11301 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-relation-random-a40-relation-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 31
sbatch gen-img-predcls-val-999-template-pass.sh 11311 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-relation-random-a40-relation-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 32
sbatch gen-img-predcls-val-999-template-pass.sh 11321 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-relation-unique-original-a40-relation-unique-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 33
sbatch gen-img-predcls-val-999-template-pass.sh 11331 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-relation-unique-original-a40-relation-unique-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 34
sbatch gen-img-predcls-val-999-template-pass.sh 11341 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-relation-unique-random-a40-relation-unique-original-iter_48338-run_0-1234" "generated_image"
sleep 1s
echo 35
sbatch gen-img-predcls-val-999-template-pass.sh 11351 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-relation-unique-random-a40-relation-unique-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 36
sbatch gen-img-predcls-val-999-template-pass.sh 11361 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-object-random-add-max-margin-a40-V1-object-original-iter_144600-run_0-1234" "generated_image"
sleep 1s
echo 37
sbatch gen-img-predcls-val-999-template-pass.sh 11371 "validation_common_data_nofilter_bbox_dbox32_np.pkl" "LayoutDiffusion_VG_vg4998_round_2" "generated_image"