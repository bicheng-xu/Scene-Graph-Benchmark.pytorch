echo 1
sbatch relation-test-gen-img-predcls-val-999-template-pass.sh 11171 "triplet_swaped_dict_validation_1_input.pkl" "SGDiff_results_triplet_swap_val" "generated_image"
sleep 1s
echo 2
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 11181 "triplet_swaped_dict_validation_1_input.pkl" "SGDiff_results_triplet_swap_val" "generated_image"
sleep 1s
echo 3
sbatch gen-img-predcls-val-999-template-pass.sh 12071 "validation_common_data_bbox_dbox32_np.pkl" "SGDiff_results_vg4998" "generated_image"
sleep 1s
echo 4
sbatch gen-img-sgcls-val-999-template-pass.sh 12081 "validation_common_data_bbox_dbox32_np.pkl" "SGDiff_results_vg4998" "generated_image"