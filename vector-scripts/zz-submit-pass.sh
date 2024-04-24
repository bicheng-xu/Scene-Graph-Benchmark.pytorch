echo 1
sbatch gen-img-sgcls-val-999-template-pass.sh 11011 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-50imagebboxdrop50-lossreweight-maskingonlyadd-a40-object-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 2
sbatch gen-img-sgcls-val-999-template-pass.sh 11021 "validation_data_bbox_dbox32_np.pkl" "vg-norel-prompt-object-random-50imagebboxdrop50-lossreweight-maskingonlyadd-a40-object-ordered-iter_48200-run_0-1234" "generated_image"