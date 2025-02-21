#!/usr/bin/env bash

init_ctx=("A")   # prefix_prompt:  Initializes the embedding for the prefix prompt and determines its length; choice_list: ("A photo of a" "Photo of a" "Photo of" "A photo of a" "Photo of a" "Photo of")
init_end_ctx=(".") # suffix_prompt: Initializes the suffix prompt embedding and determines the length of the suffix prompt; choice_list: (". ." "." ". ." "." ". ." ".")
pretrained_model_path=path/to/pretrained_model
modifier_token="<new1>+<new2>+<new3>"

reference_caption=("<new1> <new2> <new3> tortoise plushy")
data_path=("data/tortoise_plushy")
reg_path=("real_reg/samples_tortoise_plushy")
class_noun=("tortoise plushy")

ARRAY=()

for i in "$@"
do 
    echo $i
    ARRAY+=("${i}")
done

length=${#init_ctx[@]}

#python src/retrieve.py --target_name "${ARRAY[0]}" --outpath ${ARRAY[2]}

i=0
while [ $i -lt $length ]; do

    python -u  train.py \
            --base configs/finetune_addtoken.yaml  \
            -t --gpus 0,1,2 \
            --resume-from-checkpoint-custom  $pretrained_model_path \
            --caption "${reference_caption[$i]}" \
            --datapath "${data_path[$i]}" \
            --reg_datapath "${reg_path[$i]}/images.txt" \
            --reg_caption "${reg_path[$i]}/caption.txt" \
            --modifier_token $modifier_token \
            --name "${class_noun[$i]}-sdv4" \
            --init_ctx "${init_ctx[$i]}" \
            --ctx_end_init "${init_end_ctx[$i]}" \
            --class_name "${class_noun[$i]}" 

    i=$((i + 1))
done