#!/bin/bash

# For LaMa inpainter
export TORCH_HOME=$(pwd)/lama && export PYTHONPATH=$(pwd)/lama

# Generate amodal completion
# python main.py \
# --input_dir /viscam/projects/image2Blender/scenes \
# --img_filenames_txt ./img_filenames.txt \
# --mc_timestep 35 \
# --output_dir ./output

python main_single.py \
--input_img /viscam/projects/image2Blender/scenes/1.png \
--text table \
--input_mask /viscam/projects/image2Blender/masks/1-table.png \
--mc_timestep 35 \
--output_dir ./output
