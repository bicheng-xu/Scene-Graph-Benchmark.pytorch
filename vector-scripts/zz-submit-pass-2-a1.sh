echo 5
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 12051 "triplet_swaped_dict_training_1_input.pkl" "vg-norel-prompt-object-original-a40-triplet_swaped_dict_training_1_input-object-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 16
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 12161 "triplet_swaped_dict_training_1_input.pkl" "vg-norel-prompt-object-original-a40-triplet_swaped_dict_training_1_input-object-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 10
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 12101 "triplet_swaped_dict_validation_1_input.pkl" "vg-norel-prompt-object-original-a40-triplet_swaped_dict_validation_1_input-object-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 17
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 12171 "triplet_swaped_dict_validation_1_input.pkl" "vg-norel-prompt-object-original-a40-triplet_swaped_dict_validation_1_input-object-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 15
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 12151 "validation_common_semantic_triplets.pkl" "vg-norel-prompt-object-original-a40-validation_common_semantic_triplets-object-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 18
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 12181 "validation_common_semantic_triplets.pkl" "vg-norel-prompt-object-original-a40-validation_common_semantic_triplets-object-original-iter_96400-run_0-1234" "generated_image"