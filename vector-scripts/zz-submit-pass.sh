echo 1
sbatch gen-img-sgcls-val-999-template-pass.sh 11011 "validation_common_data_bbox_dbox32_np.pkl" "vg-prompt-object-random-a40-common-object-ordered-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 2
sbatch gen-img-sgcls-val-999-template-pass.sh 11021 "validation_common_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-a40-common-object-ordered-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 3
sbatch gen-img-sgcls-val-999-template-pass.sh 11031 "validation_common_data_bbox_dbox32_np.pkl" "vg-prompt-object-random-a40-common-object-ordered-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 4
sbatch gen-img-sgcls-val-999-template-pass.sh 11041 "validation_common_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-a40-common-object-ordered-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 5
sbatch gen-img-sgcls-val-999-template-pass.sh 11051 "validation_common_data_bbox_dbox32_np.pkl" "vg-prompt-object-random-a40-common-object-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 6
sbatch gen-img-sgcls-val-999-template-pass.sh 11061 "validation_common_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-a40-common-object-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 7
sbatch gen-img-sgcls-val-999-template-pass.sh 11071 "validation_common_data_bbox_dbox32_np.pkl" "vg-prompt-object-random-a40-common-object-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 8
sbatch gen-img-sgcls-val-999-template-pass.sh 11081 "validation_common_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-a40-common-object-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 9
sbatch gen-img-sgcls-val-999-template-pass.sh 11091 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-object-random-a40-object-original-relcoeff2-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 10
sbatch gen-img-sgcls-val-999-template-pass.sh 11101 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-object-random-a40-object-original-relcoeff3-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 11
sbatch gen-img-sgcls-val-999-template-pass.sh 11111 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-object-random-a40-object-original-relcoeff4-iter_96400-run_0-1234" "generated_image"