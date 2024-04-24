echo 1
sbatch gen-img-sgcls-val-999-template-pass.sh 11025 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-100imagebboxdrop25-lossreweight-a40-object-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 2
sbatch gen-img-sgcls-val-999-template-pass.sh 11027 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-objmax10-uniform-a40-object-ordered-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 3
sbatch gen-img-sgcls-val-999-template-pass.sh 11028 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-objmax10-layout2img-a40-object-ordered-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 4
sbatch gen-img-sgcls-val-999-template-pass.sh 11029 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-50imagebboxdrop50-a40-object-ordered-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 5
sbatch gen-img-sgcls-val-999-template-pass.sh 11030 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-50imagebboxdrop50-lossreweight-a40-object-ordered-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 6
sbatch gen-img-sgcls-val-999-template-pass.sh 11031 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-100imagebboxdrop25-a40-object-ordered-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 7
sbatch gen-img-sgcls-val-999-template-pass.sh 11032 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-100imagebboxdrop25-lossreweight-a40-object-ordered-iter_48200-run_0-1234" "generated_image"