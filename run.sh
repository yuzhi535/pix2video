#!/bin/zsh

# conda env
eval "$(conda shell.bash hook)"
conda activate pix2video

# run

echo "[Arguments]
noFrames: 50
org_prompt: A flower vase is sitting on a porch stand.
edit_prompt: A squirrel admires a flower vase on a porch stand.
W: 512
H: 512" > example_data/data_config.cfg

python split.py example_data/30-input_00001.mp4 example_data/inputs
python code/test_cfg.py
