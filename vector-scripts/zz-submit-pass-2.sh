echo 1
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 11015 "image_vg_common_val_data_semantic_reduced_test_rel_10_1.pkl" "vg-norel-prompt-object-random-a40-common_semantic_reduced-test_rel_10_1-object-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 2
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 11025 "image_vg_common_val_data_semantic_reduced_test_rel_10_1.pkl" "vg-prompt-object-random-a40-common_semantic_reduced-test_rel_10_1-object-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 3
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 11035 "image_vg_common_val_data_semantic_reduced_test_rel_10_1.pkl" "vg-prompt-object-random-add-max-margin-a40-V1-common_semantic_reduced-test_rel_10_1-object-original-iter_144600-run_0-1234" "generated_image"
sleep 1s
echo 4
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 11045 "image_vg_common_val_data_semantic_reduced_test_rel_10_1.pkl" "vg-prompt-obj_rel-random-a40-common_semantic_reduced-test_rel_10_1-obj_rel-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 5
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 11055 "image_vg_common_val_data_semantic_reduced_test_rel_10_1.pkl" "vg-prompt-obj_rel-random-a40-common_semantic_reduced-test_rel_10_1-obj_rel-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 6
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 11065 "image_vg_common_val_data_semantic_reduced_test_rel_10_1.pkl" "vg-prompt-obj_rel_word-ordered-a40-common_semantic_reduced-test_rel_10_1-obj_rel_word-ordered-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 7
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 11075 "image_vg_common_val_data_semantic_reduced_test_rel_10_1.pkl" "vg-prompt-obj_rel_word-ordered-a40-common_semantic_reduced-test_rel_10_1-obj_rel_word-ordered-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 8
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 11085 "image_vg_common_val_data_semantic_reduced_test_rel_10_1.pkl" "vg-prompt-obj_rel_word-unique-ordered-a40-common_semantic_reduced-test_rel_10_1-obj_rel_word-unique-ordered-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 9
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 11095 "image_vg_common_val_data_semantic_reduced_test_rel_10_1.pkl" "vg-prompt-obj_rel_word-unique-ordered-a40-common_semantic_reduced-test_rel_10_1-obj_rel_word-unique-ordered-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 10
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 11105 "image_vg_common_val_data_semantic_reduced_test_rel_10_1.pkl" "vg-prompt-relation-random-a40-common_semantic_reduced-test_rel_10_1-relation-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 11
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 11115 "image_vg_common_val_data_semantic_reduced_test_rel_10_1.pkl" "vg-prompt-relation-random-a40-common_semantic_reduced-test_rel_10_1-relation-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 12
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 11125 "image_vg_common_val_data_semantic_reduced_test_rel_10_1.pkl" "vg-prompt-relation-unique-original-a40-common_semantic_reduced-test_rel_10_1-relation-unique-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 13
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 11135 "image_vg_common_val_data_semantic_reduced_test_rel_10_1.pkl" "vg-prompt-relation-unique-original-a40-common_semantic_reduced-test_rel_10_1-relation-unique-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 14
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 11145 "image_vg_common_val_data_semantic_reduced_test_rel_10_1.pkl" "vg-prompt-relation-unique-random-a40-common_semantic_reduced-test_rel_10_1-relation-unique-original-iter_48338-run_0-1234" "generated_image"
sleep 1s
echo 15
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 11155 "image_vg_common_val_data_semantic_reduced_test_rel_10_1.pkl" "vg-prompt-relation-unique-random-a40-common_semantic_reduced-test_rel_10_1-relation-unique-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 16
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 11165 "image_vg_common_val_data_semantic_test_rel_10_1.pkl" "vg-norel-prompt-object-random-a40-common_semantic-test_rel_10_1-object-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 17
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 11175 "image_vg_common_val_data_semantic_test_rel_10_1.pkl" "vg-prompt-object-random-a40-common_semantic-test_rel_10_1-object-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 18
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 11185 "image_vg_common_val_data_semantic_test_rel_10_1.pkl" "vg-prompt-object-random-add-max-margin-a40-V1-common_semantic-test_rel_10_1-object-original-iter_144600-run_0-1234" "generated_image"
sleep 1s
echo 19
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 11195 "image_vg_common_val_data_semantic_test_rel_10_1.pkl" "vg-prompt-obj_rel-random-a40-common_semantic-test_rel_10_1-obj_rel-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 20
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 11205 "image_vg_common_val_data_semantic_test_rel_10_1.pkl" "vg-prompt-obj_rel-random-a40-common_semantic-test_rel_10_1-obj_rel-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 21
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 11215 "image_vg_common_val_data_semantic_test_rel_10_1.pkl" "vg-prompt-obj_rel_word-ordered-a40-common_semantic-test_rel_10_1-obj_rel_word-ordered-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 22
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 11225 "image_vg_common_val_data_semantic_test_rel_10_1.pkl" "vg-prompt-obj_rel_word-ordered-a40-common_semantic-test_rel_10_1-obj_rel_word-ordered-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 23
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 11235 "image_vg_common_val_data_semantic_test_rel_10_1.pkl" "vg-prompt-obj_rel_word-unique-ordered-a40-common_semantic-test_rel_10_1-obj_rel_word-unique-ordered-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 24
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 11245 "image_vg_common_val_data_semantic_test_rel_10_1.pkl" "vg-prompt-obj_rel_word-unique-ordered-a40-common_semantic-test_rel_10_1-obj_rel_word-unique-ordered-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 25
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 11255 "image_vg_common_val_data_semantic_test_rel_10_1.pkl" "vg-prompt-relation-random-a40-common_semantic-test_rel_10_1-relation-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 26
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 11265 "image_vg_common_val_data_semantic_test_rel_10_1.pkl" "vg-prompt-relation-random-a40-common_semantic-test_rel_10_1-relation-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 27
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 11275 "image_vg_common_val_data_semantic_test_rel_10_1.pkl" "vg-prompt-relation-unique-original-a40-common_semantic-test_rel_10_1-relation-unique-original-iter_48200-run_0-1234" "generated_image"
sleep 1s
echo 28
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 11285 "image_vg_common_val_data_semantic_test_rel_10_1.pkl" "vg-prompt-relation-unique-original-a40-common_semantic-test_rel_10_1-relation-unique-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 29
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 11295 "image_vg_common_val_data_semantic_test_rel_10_1.pkl" "vg-prompt-relation-unique-random-a40-common_semantic-test_rel_10_1-relation-unique-original-iter_48338-run_0-1234" "generated_image"
sleep 1s
echo 30
sbatch relation-test-gen-img-sgcls-val-999-template-pass.sh 11305 "image_vg_common_val_data_semantic_test_rel_10_1.pkl" "vg-prompt-relation-unique-random-a40-common_semantic-test_rel_10_1-relation-unique-original-iter_96400-run_0-1234" "generated_image"