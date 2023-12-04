#!/bin/bash
#########################################################
# Uncomment and change the variables below to your need:#
#########################################################

# Install directory without trailing slash
#install_dir="/home/$(whoami)"

# Name of the subdirectory
#clone_dir="stable-diffusion-webui"

# Commandline arguments for webui.py, for example: export COMMANDLINE_ARGS="--medvram --opt-split-attention"
#export COMMANDLINE_ARGS=""

# python3 executable
#python_cmd="python3"

# git executable
#export GIT="git"

# python3 venv without trailing slash (defaults to ${install_dir}/${clone_dir}/venv)
#venv_dir="venv"

# script to launch to start the app
#export LAUNCH_SCRIPT="launch.py"

# install command for torch
#export TORCH_COMMAND="pip install torch==1.12.1+cu113 --extra-index-url https://download.pytorch.org/whl/cu113"

# Requirements file to use for stable-diffusion-webui
#export REQS_FILE="requirements_versions.txt"

# Fixed git repos
#export K_DIFFUSION_PACKAGE=""
#export GFPGAN_PACKAGE=""

# Fixed git commits
#export STABLE_DIFFUSION_COMMIT_HASH=""
#export CODEFORMER_COMMIT_HASH=""
#export BLIP_COMMIT_HASH=""

# Uncomment to enable accelerated launch
#export ACCELERATE="True"

# Uncomment to disable TCMalloc
#export NO_TCMALLOC="True"

###########################################

export TORCH_INDEX_URL="https://download.pytorch.org/whl/cu118"

# for intel
# export COMMANDLINE_ARGS="--skip-torch-cuda-test --upcast-sampling --no-half-vae  --use-cpu interrogate --precision full --no-half"

# env start
export WEBUI_EXTENSIONS_INDEX="https://ghproxy.com/https://raw.githubusercontent.com/AUTOMATIC1111/stable-diffusion-webui-extensions/master/index.json"
export GFPGAN_PACKAGE=https://ghproxy.com/https://github.com/TencentARC/GFPGAN/archive/8d2447a2d918f8eba5a4a01463fd48e45126a379.zip
export CLIP_PACKAGE=https://ghproxy.com/https://github.com/openai/CLIP/archive/d50d76daa670286dd6cacf3bcd80b5e4823fc8e1.zip
export OPENCLIP_PACKAGE=https://ghproxy.com/https://github.com/mlfoundations/open_clip/archive/bb6e834e9c70d9c27d0dc3ecedeebeaeb1ffad6b.zip
export STABLE_DIFFUSION_REPO=https://ghproxy.com/https://github.com/Stability-AI/stablediffusion.git
export STABLE_DIFFUSION_XL_REPO=https://ghproxy.com/https://github.com/Stability-AI/generative-models.git
export CODEFORMER_REPO=https://ghproxy.com/https://github.com/sczhou/CodeFormer.git
export BLIP_REPO=https://ghproxy.com/https://github.com/salesforce/BLIP.git
# env end
