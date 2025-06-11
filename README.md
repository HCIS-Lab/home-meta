# home-meta

Monorepo for managing and building the **HCIS-Lab Home Robot Stack**.

This repository mainly serves as the meta repository for pulling and building related sub-projects using `home.repos` and `vcs`.  
It also includes setup scripts and development container configurations.

## Sub-repositories

This meta repo pulls in the following sub-projects:

| Repository        | URL                                           | Branch | Description                                      |
|-------------------|-----------------------------------------------|--------|--------------------------------------------------|
| **home_bringup**  | https://github.com/HCIS-Lab/home-bringup      | main   | Stores ROS2 launch files for starting and managing ROS2 nodes |
| **home_grasp**    | https://github.com/HCIS-Lab/home-grasp.git    | main   | Provides robot grasping functionality |
| **home_interfaces** | https://github.com/HCIS-Lab/home-interfaces.git | main   | Defines custom ROS2 msg, srv, action for inter-node communication |
| **home_nlp**      | https://github.com/HCIS-Lab/home-nlp.git      | main   | Manages speech-related functions, including microphone, ASR, and LLM nodes |
| **yolo_ros**      | https://github.com/mgonzs13/yolo_ros.git      | 4.2.0  | YOLO implementation for ROS |

## Getting Started

```bash
git clone git@github.com:HCIS-Lab/home-meta.git
cd ros2_ws

chmod +x scripts/*
./script/setup.sh

# Build ROS2 packages
colcon build
```

## Notes

You can use the provided DevContainer (`.devcontainer/`) to set up a consistent development environment.

This repo serves only as a meta layer; all main code lives in the sub-repositories.

```json
// .vscode/settings.json
{
    "python.analysis.extraPaths": [
        "/opt/ros/humble/lib/python3.10/site-packages",
        "/opt/ros/humble/local/lib/python3.10/dist-packages",
        "/home/ubuntu/ros2_ws/install/yolo_ros/lib/python3.10/site-packages",
        "/home/ubuntu/ros2_ws/install/yolo_msgs/local/lib/python3.10/dist-packages",
        "/home/ubuntu/ros2_ws/install/home_nlp/lib/python3.10/site-packages",
        "/home/ubuntu/ros2_ws/install/home_interfaces/local/lib/python3.10/dist-packages",
        "/home/ubuntu/ros2_ws/install/home_grasp/lib/python3.10/site-packages",
    ]
}
```

TODO: 整合到 repo: lnfu/ros_env

cuda12+cudnn9

```bash
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.1-1_all.deb
sudo dpkg -i cuda-keyring_1.1-1_all.deb
sudo apt-get update
# sudo apt-get -y install cuda-toolkit-12-4
sudo apt-get -y install cudnn-cuda-12
sudo apt-get -y install cudnn
```
