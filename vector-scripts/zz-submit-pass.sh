echo 1
sbatch gen-img-sgcls-val-999-template-pass.sh 11011 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-relation-random-a40-relation-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 2
sbatch gen-img-sgcls-val-999-template-pass.sh 11012 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-relation-random-a40-relation-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 3
sbatch gen-img-sgcls-val-999-template-pass.sh 11013 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-obj_rel-random-a40-obj_rel-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 4
sbatch gen-img-sgcls-val-999-template-pass.sh 11014 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-obj_rel-random-a40-obj_rel-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 5
sbatch gen-img-sgcls-val-999-template-pass.sh 11015 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-a40-object-original-iter_192800-run_0-1234" "generated_image"
sleep 1s
echo 6
sbatch gen-img-sgcls-val-999-template-pass.sh 11016 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-object-random-a40-object-original-iter_192800-run_0-1234" "generated_image"
sleep 1s
echo 7
sbatch gen-img-sgcls-val-999-template-pass.sh 11017 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-a40-object-ordered-iter_192800-run_0-1234" "generated_image"
sleep 1s
echo 8
sbatch gen-img-sgcls-val-999-template-pass.sh 11018 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-object-random-a40-object-ordered-iter_192800-run_0-1234" "generated_image"
sleep 1s
echo 9
sbatch gen-img-sgcls-val-999-template-pass.sh 11019 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-objmax10-uniform-a40-object-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 10
sbatch gen-img-sgcls-val-999-template-pass.sh 11020 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-objmax10-layout2img-a40-object-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 11
sbatch gen-img-sgcls-val-999-template-pass.sh 11021 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-lossreweight-a40-object-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 12
sbatch gen-img-sgcls-val-999-template-pass.sh 11022 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-50imagebboxdrop50-a40-object-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 13
sbatch gen-img-sgcls-val-999-template-pass.sh 11023 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-50imagebboxdrop50-lossreweight-a40-object-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 14
sbatch gen-img-sgcls-val-999-template-pass.sh 11024 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-100imagebboxdrop25-a40-object-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 15
sbatch gen-img-sgcls-val-999-template-pass.sh 11025 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-100imagebboxdrop25-lossreweight-a40-object-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 16
sbatch gen-img-sgcls-val-999-template-pass.sh 11026 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-lossreweight-a40-object-ordered-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 17
sbatch gen-img-sgcls-val-999-template-pass.sh 11027 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-objmax10-uniform-a40-object-ordered-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 18
sbatch gen-img-sgcls-val-999-template-pass.sh 11028 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-objmax10-layout2img-a40-object-ordered-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 19
sbatch gen-img-sgcls-val-999-template-pass.sh 11029 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-50imagebboxdrop50-a40-object-ordered-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 20
sbatch gen-img-sgcls-val-999-template-pass.sh 11030 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-50imagebboxdrop50-lossreweight-a40-object-ordered-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 21
sbatch gen-img-sgcls-val-999-template-pass.sh 11031 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-100imagebboxdrop25-a40-object-ordered-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 22
sbatch gen-img-sgcls-val-999-template-pass.sh 11032 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-100imagebboxdrop25-lossreweight-a40-object-ordered-iter_48200-run_0-1234" "generated_image"