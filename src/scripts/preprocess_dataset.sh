#! /bin/bash

## Deepq
# CMD="python /home/liyu/workshop/LLM/cpm/CPM-Bee/src/preprocess_dataset.py --input /mnt/datawarehouse/LLM/LLM-data/pretrain/raw_data_lm --output_path /mnt/datawarehouse/LLM/LLM-data/pretrain/cpm_data/lm --output_name pretrain"


## bestmodel
# lm
# CMD="python /yinxr/deepq/CPM-Bee/src/preprocess_dataset.py --input /yinxr/deepq/raw_data_lm_new/版权资讯 --output_path /yinxr/deepq/CPM-Bee/data/pretrain/lm --output_name pretrain"
# CMD="python /yinxr/deepq/CPM-Bee/src/preprocess_dataset.py --input /yinxr/deepq/raw_data_lm_new/公告 --output_path /yinxr/deepq/CPM-Bee/data/pretrain/lm --output_name pretrain"
# CMD="python /yinxr/deepq/CPM-Bee/src/preprocess_dataset.py --input /yinxr/deepq/raw_data_lm_new/金融百科 --output_path /yinxr/deepq/CPM-Bee/data/pretrain/lm --output_name pretrain"
# CMD="python /yinxr/deepq/CPM-Bee/src/preprocess_dataset.py --input /yinxr/deepq/raw_data_lm_new/书籍 --output_path /yinxr/deepq/CPM-Bee/data/pretrain/lm --output_name pretrain"
# CMD="python /yinxr/deepq/CPM-Bee/src/preprocess_dataset.py --input /yinxr/deepq/raw_data_lm_new/舆情 --output_path /yinxr/deepq/CPM-Bee/data/pretrain/lm --output_name pretrain"
# CMD="python /yinxr/deepq/CPM-Bee/src/preprocess_dataset.py --input /yinxr/deepq/raw_data_lm_new/ --output_path /yinxr/deepq/CPM-Bee/data/pretrain/lm --output_name pretrain"

# mlm
# CMD="python /yinxr/deepq/CPM-Bee/src/preprocess_dataset.py --input /yinxr/deepq/raw_data_mlm/版权资讯 --output_path /yinxr/deepq/CPM-Bee/data/pretrain/mlm --output_name pretrain"
# CMD="python /yinxr/deepq/CPM-Bee/src/preprocess_dataset.py --input /yinxr/deepq/raw_data_mlm/公告 --output_path /yinxr/deepq/CPM-Bee/data/pretrain/mlm --output_name pretrain"
# CMD="python /yinxr/deepq/CPM-Bee/src/preprocess_dataset.py --input /yinxr/deepq/raw_data_mlm/舆情 --output_path /yinxr/deepq/CPM-Bee/data/pretrain/mlm --output_name pretrain"


# 1<<16
# CMD="python /yinxr/deepq/CPM-Bee/src/preprocess_dataset.py --input /yinxr/deepq/raw_data_mlm/金融百科 --output_path /yinxr/deepq/CPM-Bee/data/pretrain/mlm --output_name pretrain"
# 1<<23
# CMD="python /yinxr/deepq/CPM-Bee/src/preprocess_dataset.py --input /yinxr/deepq/raw_data_mlm/书籍 --output_path /yinxr/deepq/CPM-Bee/data/pretrain/mlm --output_name pretrain"

## jeeves
# CMD="python /data/CPM-Bee/src/preprocess_dataset_en.py --input /data/pretrain_data/shenqing_financial_data/mlm_data  --output_path /data/pretrain_data/shenqing_financial_data/pretrain/mlm --output_name pretrain"
CMD="python /data/CPM-Bee/src/preprocess_dataset_en.py --input /data/pretrain_data/shenqing_financial_data/lm_data  --output_path /data/pretrain_data/shenqing_financial_data/pretrain/lm --output_name pretrain"



echo $CMD
$CMD
