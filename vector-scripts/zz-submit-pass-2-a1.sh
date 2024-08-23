echo 1
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 12011 "triplet_swaped_dict_training_1_input.pkl" "vg-prompt-obj_rel-random-a40-triplet_swaped_dict_training_1_input-obj_rel-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 2
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 12021 "triplet_swaped_dict_training_1_input.pkl" "vg-prompt-relation-random-a40-triplet_swaped_dict_training_1_input-relation-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 3
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 12031 "triplet_swaped_dict_training_1_input.pkl" "vg-prompt-relation-unique-random-a40-triplet_swaped_dict_training_1_input-relation-unique-original-iter_48338-run_0-1234" "generated_image"
sleep 1s
echo 4
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 12041 "triplet_swaped_dict_training_1_input.pkl" "vg-prompt-relation-unique-random-a40-triplet_swaped_dict_training_1_input-relation-unique-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 5
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 12051 "triplet_swaped_dict_training_1_input.pkl" "vg-norel-prompt-object-random-a40-triplet_swaped_dict_training_1_input-object-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 16
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 12161 "triplet_swaped_dict_training_1_input.pkl" "vg-norel-prompt-object-random-a40-triplet_swaped_dict_training_1_input-object-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 6
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 12061 "triplet_swaped_dict_validation_1_input.pkl" "vg-prompt-obj_rel-random-a40-triplet_swaped_dict_validation_1_input-obj_rel-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 7
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 12071 "triplet_swaped_dict_validation_1_input.pkl" "vg-prompt-relation-random-a40-triplet_swaped_dict_validation_1_input-relation-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 8
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 12081 "triplet_swaped_dict_validation_1_input.pkl" "vg-prompt-relation-unique-random-a40-triplet_swaped_dict_validation_1_input-relation-unique-original-iter_48338-run_0-1234" "generated_image"
sleep 1s
echo 9
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 12091 "triplet_swaped_dict_validation_1_input.pkl" "vg-prompt-relation-unique-random-a40-triplet_swaped_dict_validation_1_input-relation-unique-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 10
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 12101 "triplet_swaped_dict_validation_1_input.pkl" "vg-norel-prompt-object-random-a40-triplet_swaped_dict_validation_1_input-object-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 17
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 12171 "triplet_swaped_dict_validation_1_input.pkl" "vg-norel-prompt-object-random-a40-triplet_swaped_dict_validation_1_input-object-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 11
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 12111 "validation_common_semantic_triplets.pkl" "vg-prompt-obj_rel-random-a40-validation_common_semantic_triplets-obj_rel-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 12
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 12121 "validation_common_semantic_triplets.pkl" "vg-prompt-relation-random-a40-validation_common_semantic_triplets-relation-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 13
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 12131 "validation_common_semantic_triplets.pkl" "vg-prompt-relation-unique-random-a40-validation_common_semantic_triplets-relation-unique-original-iter_48338-run_0-1234" "generated_image"
sleep 1s
echo 14
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 12141 "validation_common_semantic_triplets.pkl" "vg-prompt-relation-unique-random-a40-validation_common_semantic_triplets-relation-unique-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 15
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 12151 "validation_common_semantic_triplets.pkl" "vg-norel-prompt-object-random-a40-validation_common_semantic_triplets-object-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 18
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 12181 "validation_common_semantic_triplets.pkl" "vg-norel-prompt-object-random-a40-validation_common_semantic_triplets-object-original-iter_96400-run_0-1234" "generated_image"