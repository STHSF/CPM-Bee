#! /bin/bash

CMD="python /home/liyu/workshop/LLM/cpm/CPM-Bee/src/preprocess_dataset.py --input /mnt/datawarehouse/LLM/LLM-data/pretrain/raw_data_mlm --output_path /mnt/datawarehouse/LLM/LLM-data/pretrain/cpm_data --output_name article"

echo $CMD
$CMD
