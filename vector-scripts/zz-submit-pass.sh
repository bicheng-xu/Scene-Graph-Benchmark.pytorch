echo 1
sbatch gen-img-predcls-val-999-template-pass.sh 11011 "validation_common_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-original-a40-common-object-original-iter_96400-run_22-1234" "generated_image"
sleep 1s
echo 2
sbatch gen-img-predcls-val-999-template-pass.sh 11021 "validation_common_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-original-a40-common-object-original-iter_48200-run_22-1234" "generated_image"
sleep 1s
echo 3
sbatch gen-img-predcls-val-999-template-pass.sh 11031 "validation_common_data_bbox_dbox32_np.pkl" "vg-prompt-relation-unique-original-a40-common-relation-unique-original-iter_96400-run_22-1234" "generated_image"
sleep 1s
echo 4
sbatch gen-img-predcls-val-999-template-pass.sh 11041 "validation_common_data_bbox_dbox32_np.pkl" "vg-prompt-relation-unique-original-a40-common-relation-unique-original-iter_48200-run_22-1234" "generated_image"
sleep 1s
echo 5
sbatch gen-img-predcls-val-999-template-pass.sh 11051 "validation_common_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-a40-common-object-original-iter_96400-run_22-1234" "generated_image"
sleep 1s
echo 6
sbatch gen-img-predcls-val-999-template-pass.sh 11061 "validation_common_data_bbox_dbox32_np.pkl" "vg-prompt-relation-unique-random-a40-common-relation-unique-original-iter_96400-run_22-1234" "generated_image"
sleep 1s
echo 7
sbatch gen-img-predcls-val-999-template-pass.sh 11071 "validation_common_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-a40-common-object-original-iter_48200-run_22-1234" "generated_image"
sleep 1s
echo 8
sbatch gen-img-predcls-val-999-template-pass.sh 11081 "validation_common_data_bbox_dbox32_np.pkl" "vg-prompt-relation-unique-random-a40-common-relation-unique-original-iter_48338-run_22-1234" "generated_image"