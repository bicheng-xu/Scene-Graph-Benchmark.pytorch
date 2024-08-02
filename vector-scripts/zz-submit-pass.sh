echo 1
sbatch relation-test-gen-img-predcls-val-999-template-pass.sh 11011 "image_vg_common_val_data_semantic_reduced_test_rel_10_1.pkl" "vg-norel-prompt-object-random-a40-common_semantic_reduced-test_rel_10_1-object-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 2
sbatch relation-test-gen-img-predcls-val-999-template-pass.sh 11021 "image_vg_common_val_data_semantic_reduced_test_rel_10_1.pkl" "vg-prompt-object-random-a40-common_semantic_reduced-test_rel_10_1-object-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 3
sbatch relation-test-gen-img-predcls-val-999-template-pass.sh 11031 "image_vg_common_val_data_semantic_reduced_test_rel_10_1.pkl" "vg-prompt-object-random-add-max-margin-a40-V1-common_semantic_reduced-test_rel_10_1-object-original-iter_144600-run_0-1234" "generated_image"
sleep 1s
echo 4
sbatch relation-test-gen-img-predcls-val-999-template-pass.sh 11041 "image_vg_common_val_data_semantic_reduced_test_rel_10_1.pkl" "vg-prompt-obj_rel-random-a40-common_semantic_reduced-test_rel_10_1-obj_rel-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 5
sbatch relation-test-gen-img-predcls-val-999-template-pass.sh 11051 "image_vg_common_val_data_semantic_reduced_test_rel_10_1.pkl" "vg-prompt-obj_rel-random-a40-common_semantic_reduced-test_rel_10_1-obj_rel-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 6
sbatch relation-test-gen-img-predcls-val-999-template-pass.sh 11061 "image_vg_common_val_data_semantic_reduced_test_rel_10_1.pkl" "vg-prompt-obj_rel_word-ordered-a40-common_semantic_reduced-test_rel_10_1-obj_rel_word-ordered-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 7
sbatch relation-test-gen-img-predcls-val-999-template-pass.sh 11071 "image_vg_common_val_data_semantic_reduced_test_rel_10_1.pkl" "vg-prompt-obj_rel_word-ordered-a40-common_semantic_reduced-test_rel_10_1-obj_rel_word-ordered-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 8
sbatch relation-test-gen-img-predcls-val-999-template-pass.sh 11081 "image_vg_common_val_data_semantic_reduced_test_rel_10_1.pkl" "vg-prompt-obj_rel_word-unique-ordered-a40-common_semantic_reduced-test_rel_10_1-obj_rel_word-unique-ordered-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 9
sbatch relation-test-gen-img-predcls-val-999-template-pass.sh 11091 "image_vg_common_val_data_semantic_reduced_test_rel_10_1.pkl" "vg-prompt-obj_rel_word-unique-ordered-a40-common_semantic_reduced-test_rel_10_1-obj_rel_word-unique-ordered-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 10
sbatch relation-test-gen-img-predcls-val-999-template-pass.sh 11101 "image_vg_common_val_data_semantic_reduced_test_rel_10_1.pkl" "vg-prompt-relation-random-a40-common_semantic_reduced-test_rel_10_1-relation-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 11
sbatch relation-test-gen-img-predcls-val-999-template-pass.sh 11111 "image_vg_common_val_data_semantic_reduced_test_rel_10_1.pkl" "vg-prompt-relation-random-a40-common_semantic_reduced-test_rel_10_1-relation-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 12
sbatch relation-test-gen-img-predcls-val-999-template-pass.sh 11121 "image_vg_common_val_data_semantic_reduced_test_rel_10_1.pkl" "vg-prompt-relation-unique-original-a40-common_semantic_reduced-test_rel_10_1-relation-unique-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 13
sbatch relation-test-gen-img-predcls-val-999-template-pass.sh 11131 "image_vg_common_val_data_semantic_reduced_test_rel_10_1.pkl" "vg-prompt-relation-unique-original-a40-common_semantic_reduced-test_rel_10_1-relation-unique-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 14
sbatch relation-test-gen-img-predcls-val-999-template-pass.sh 11141 "image_vg_common_val_data_semantic_reduced_test_rel_10_1.pkl" "vg-prompt-relation-unique-random-a40-common_semantic_reduced-test_rel_10_1-relation-unique-original-iter_48338-run_0-1234" "generated_image"
sleep 1s
echo 15
sbatch relation-test-gen-img-predcls-val-999-template-pass.sh 11151 "image_vg_common_val_data_semantic_reduced_test_rel_10_1.pkl" "vg-prompt-relation-unique-random-a40-common_semantic_reduced-test_rel_10_1-relation-unique-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 16
sbatch relation-test-gen-img-predcls-val-999-template-pass.sh 11161 "image_vg_common_val_data_semantic_test_rel_10_1.pkl" "vg-norel-prompt-object-random-a40-common_semantic-test_rel_10_1-object-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 17
sbatch relation-test-gen-img-predcls-val-999-template-pass.sh 11171 "image_vg_common_val_data_semantic_test_rel_10_1.pkl" "vg-prompt-object-random-a40-common_semantic-test_rel_10_1-object-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 18
sbatch relation-test-gen-img-predcls-val-999-template-pass.sh 11181 "image_vg_common_val_data_semantic_test_rel_10_1.pkl" "vg-prompt-object-random-add-max-margin-a40-V1-common_semantic-test_rel_10_1-object-original-iter_144600-run_0-1234" "generated_image"
sleep 1s
echo 19
sbatch relation-test-gen-img-predcls-val-999-template-pass.sh 11191 "image_vg_common_val_data_semantic_test_rel_10_1.pkl" "vg-prompt-obj_rel-random-a40-common_semantic-test_rel_10_1-obj_rel-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 20
sbatch relation-test-gen-img-predcls-val-999-template-pass.sh 11201 "image_vg_common_val_data_semantic_test_rel_10_1.pkl" "vg-prompt-obj_rel-random-a40-common_semantic-test_rel_10_1-obj_rel-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 21
sbatch relation-test-gen-img-predcls-val-999-template-pass.sh 11211 "image_vg_common_val_data_semantic_test_rel_10_1.pkl" "vg-prompt-obj_rel_word-ordered-a40-common_semantic-test_rel_10_1-obj_rel_word-ordered-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 22
sbatch relation-test-gen-img-predcls-val-999-template-pass.sh 11221 "image_vg_common_val_data_semantic_test_rel_10_1.pkl" "vg-prompt-obj_rel_word-ordered-a40-common_semantic-test_rel_10_1-obj_rel_word-ordered-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 23
sbatch relation-test-gen-img-predcls-val-999-template-pass.sh 11231 "image_vg_common_val_data_semantic_test_rel_10_1.pkl" "vg-prompt-obj_rel_word-unique-ordered-a40-common_semantic-test_rel_10_1-obj_rel_word-unique-ordered-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 24
sbatch relation-test-gen-img-predcls-val-999-template-pass.sh 11241 "image_vg_common_val_data_semantic_test_rel_10_1.pkl" "vg-prompt-obj_rel_word-unique-ordered-a40-common_semantic-test_rel_10_1-obj_rel_word-unique-ordered-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 25
sbatch relation-test-gen-img-predcls-val-999-template-pass.sh 11251 "image_vg_common_val_data_semantic_test_rel_10_1.pkl" "vg-prompt-relation-random-a40-common_semantic-test_rel_10_1-relation-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 26
sbatch relation-test-gen-img-predcls-val-999-template-pass.sh 11261 "image_vg_common_val_data_semantic_test_rel_10_1.pkl" "vg-prompt-relation-random-a40-common_semantic-test_rel_10_1-relation-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 27
sbatch relation-test-gen-img-predcls-val-999-template-pass.sh 11271 "image_vg_common_val_data_semantic_test_rel_10_1.pkl" "vg-prompt-relation-unique-original-a40-common_semantic-test_rel_10_1-relation-unique-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 28
sbatch relation-test-gen-img-predcls-val-999-template-pass.sh 11281 "image_vg_common_val_data_semantic_test_rel_10_1.pkl" "vg-prompt-relation-unique-original-a40-common_semantic-test_rel_10_1-relation-unique-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 29
sbatch relation-test-gen-img-predcls-val-999-template-pass.sh 11291 "image_vg_common_val_data_semantic_test_rel_10_1.pkl" "vg-prompt-relation-unique-random-a40-common_semantic-test_rel_10_1-relation-unique-original-iter_48338-run_0-1234" "generated_image"
sleep 1s
echo 30
sbatch relation-test-gen-img-predcls-val-999-template-pass.sh 11301 "image_vg_common_val_data_semantic_test_rel_10_1.pkl" "vg-prompt-relation-unique-random-a40-common_semantic-test_rel_10_1-relation-unique-original-iter_96400-run_0-1234" "generated_image"