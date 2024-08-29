echo 1
sbatch gen-img-predcls-val-999-template-pass.sh 11011 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-original-a40-object-original-iter_96400-run_10-1234" "generated_image"
sleep 1s
echo 2
sbatch gen-img-predcls-val-999-template-pass.sh 11021 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-original-a40-object-original-iter_48200-run_10-1234" "generated_image"