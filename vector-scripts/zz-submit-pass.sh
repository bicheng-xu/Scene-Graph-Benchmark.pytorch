echo 1
sbatch gen-img-sgcls-val-999-template-pass.sh 11011 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-object-random-debug100-a40-object-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 2
sbatch gen-img-sgcls-val-999-template-pass.sh 11021 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-object-random-debug200-a40-object-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 3
sbatch gen-img-sgcls-val-999-template-pass.sh 11031 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-object-random-debug300-a40-object-original-iter_144600-run_0-1234" "generated_image"
sleep 1s
echo 4
sbatch gen-img-sgcls-val-999-template-pass.sh 11041 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-debug300-a40-object-original-iter_144600-run_0-1234" "generated_image"