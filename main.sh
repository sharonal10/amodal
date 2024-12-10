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
--texts table chair chair chair chair chair chair \
--input_masks /viscam/projects/image2Blender/amodal/test_outputs/masks \
--mc_timestep 35 \
--output_dir ./output
