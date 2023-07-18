#! /bin/bash

CMD="python /home/liyu/workshop/LLM/cpm/CPM-Bee/src/preprocess_dataset.py --input /mnt/datawarehouse/LLM/LLM-data/pretrain/raw_data_lm --output_path /mnt/datawarehouse/LLM/LLM-data/pretrain/cpm_data/lm --output_name pretrain"

echo $CMD
$CMD