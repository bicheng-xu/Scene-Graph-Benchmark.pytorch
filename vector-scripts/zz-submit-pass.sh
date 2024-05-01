echo 1
sbatch gen-img-sgcls-val-999-template-pass.sh 11011 "validation_common_data_semantic_reduced.pkl" "vg-norel-prompt-object-random-a40-common_semantic_reduced-object-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 2
sbatch gen-img-sgcls-val-999-template-pass.sh 11021 "validation_common_data_semantic_reduced.pkl" "vg-prompt-object-random-a40-common_semantic_reduced-object-original-iter_96400-run_0-1234" "generated_image"
sleep 1s
echo 3
sbatch gen-img-sgcls-val-999-template-pass.sh 11031 "validation_common_data_semantic_reduced.pkl" "LayoutDiffusion_VG_vg4998_semantic_reduced_round_2" "generated_image"