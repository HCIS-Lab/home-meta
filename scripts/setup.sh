#!/usr/bin/env bash

set -euo pipefail

mkdir -p src
vcs import src < home.repos

# Install Python dependencies for yolo_ros
pip install --upgrade -r src/yolo_ros/requirements.txt

# Install Python dependencies for home_nlp
pip install --upgrade -r src/home_nlp/requirements.txt

# Install ROS2 package dependencies
rosdep update
sudo apt-get update -y
rosdep install --from-paths src --ignore-src --skip-keys=portaudio -r -y --rosdistro humble
sudo apt-get install libportaudio2 -y
