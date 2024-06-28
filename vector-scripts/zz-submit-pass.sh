echo 1
sbatch gen-img-sgcls-val-999-template-pass.sh 12021 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-object-random-add-max-margin-a40-V1-object-original-iter_144600-run_0-1234" "generated_image"
sleep 1s
echo 2
sbatch gen-img-motif-sgcls-val-999-template-pass.sh 13021 "validation_data_bbox_dbox32_np.pkl" "vg-prompt-object-random-add-max-margin-a40-V1-object-original-iter_144600-run_0-1234" "generated_image"