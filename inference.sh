#!/usr/bin/env bash
#### 
# --replace_noun: auxiliary noun for DCI. It can be common class nouns, like 'dog' or 'cat,' that differ from the class noun of the target concept.
# --agg_lambda: Aggregation lambda is typically set to -2~2 based on user demand; greater aggregation lambda for more concept-irrelevant content injection.

python3 sample.py \
    --ckpt path/to/pretrained_model \
    --prompt "<new1> <new2> <new3> tortoise plushy swimming in the pool." \
    --class_noun "tortoise plushy" \
    --modifier_token "<new1>+<new2>+<new3>" \
    --replace_noun "cat" \
    --delta_ckpt "logs/2025-02-20T20-37-55_tortoise plushy-sdv4/checkpoints/embeddings_gs-519.ckpt" \
    --device "cuda:1" \
    --use_dci \
    --agg_lambda 0 \
    --agg_time 0.2 \
    --share_guidance 