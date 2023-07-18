import os
from cpm_live.dataset import build_dataset, shuffle_dataset
import shutil
from tqdm import tqdm
import json
import argparse


def get_args():
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", type=str, help="raw dataset path", required=True)
    parser.add_argument("--output_path", type=str, help="output dataset path", required=True)
    parser.add_argument("--output_name", type=str, help="output dataset name", required=True)
    parser.add_argument("--gpunums", type=str, help="gpu nums", required=True)

    args = parser.parse_args()
    return args


def reformat_data(data):
    """set your data format"""
    return data

# def main():
#     args = get_args()
#     files = os.listdir(args.input)
#     for ds in files:
#         if ds != 'dialogue_soda_eng':
#             continue
#         fp = os.path.join(args.input, ds, 'data')
#         meta = os.path.join(fp,'meta.bin')
#         fm = open(meta,'r')
#         line = json.loads(fm.readlines()[0])
#         nbytes = line['nbytes']
#         target_size = nbytes / 512
#         target_size = int(target_size - target_size%100)

#         shuffle_dataset(
#             fp,
#             os.path.join(args.output_path, ds.split(".")[0],'data'),
#             progress_bar=True,
#             output_name=ds,
#             block_size = target_size
#         )

#     return


def main():
    args = get_args()
    files = os.listdir(args.input)

    for ds in files:
        with build_dataset("tmp", "data", block_size=16<<20) as dataset:
            with open(os.path.join(args.input, ds), "r", encoding="utf-8") as fin:
                for line in tqdm(fin.readlines(), desc=os.path.join(args.input, ds)):
                    data = json.loads(line)
                    dataset.write(reformat_data(data))
        
        # fp = os.path.join(args.input, ds, 'data')
        meta = os.path.join("tmp",'meta.bin')

        fm = open(meta,'r')
        line = json.loads(fm.readlines()[0])
        
        nbytes = line['nbytes']
        target_size = nbytes / args.gpunums
        target_size = int(target_size - target_size%100)

        print('target_size:', target_size)

        shuffle_dataset(
            "tmp",
            os.path.join(args.output_path, ds.split(".")[0]),
            progress_bar=True,
            output_name=args.output_name,
            block_size=target_size
        )
        shutil.rmtree("tmp")

        fm.close()
    return


if __name__ == "__main__":
    main()
