# home-meta

[![Ubuntu](https://img.shields.io/badge/Ubuntu-22.04.5-E95420.svg?style=flat&logo=ros&logoColor=white)](https://releases.ubuntu.com/jammy/)
[![ROS2](https://img.shields.io/badge/ROS2-Humble-22314E.svg?style=flat&logo=ros&logoColor=white)](https://docs.ros.org/en/humble/index.html)
[![python](https://img.shields.io/badge/Python-3.10.12-3776AB.svg?style=flat&logo=python&logoColor=white)](https://www.python.org)
[![NumPy](https://img.shields.io/badge/NumPy-1.26.4-013243.svg?style=flat&logo=ros&logoColor=white)](https://numpy.org/devdocs/release/1.26.4-notes.html)
[![SciPy](https://img.shields.io/badge/SciPy-1.8.0-8CAAE6.svg?style=flat&logo=ros&logoColor=white)](https://docs.scipy.org/doc/scipy/release/1.8.0-notes.html)

Monorepo for managing and building the **HCIS-Lab Home Robot Stack**.

This repository mainly serves as the meta repository for pulling and building related sub-projects using `home.repos` and `vcs`.  
It also includes setup scripts and development container configurations.

## Sub-repositories

This meta repo pulls in the following sub-projects:

| Repository        | URL                                           | Branch | Description                                      |
|-------------------|-----------------------------------------------|--------|--------------------------------------------------|
| **home_bringup**      | https://github.com/HCIS-Lab/home-bringup          | main | Stores ROS2 launch files for starting and managing ROS2 nodes |
| **home_grasp**        | https://github.com/HCIS-Lab/home-grasp.git        | main | Provides robot grasping functionality |
| **home_interfaces**   | https://github.com/HCIS-Lab/home-interfaces.git   | main | Defines custom ROS2 msg, srv, action for inter-node communication |
| **home_nlp**          | https://github.com/HCIS-Lab/home-nlp.git          | main | Manages speech-related functions, including microphone, ASR, and LLM nodes |
| **home_tree**          | https://github.com/HCIS-Lab/home-tree.git          | main | Dynamic behavior tree builder and executor |
| **yolo_ros**          | https://github.com/lnfu/yolo_ros.git              | feature/image-compression | YOLO implementation for ROS |
| **BehaviorTree.CPP**          | https://github.com/BehaviorTree/BehaviorTree.CPP.git              | 4.6.2 | Behavior tree C++ implementation |
| **BehaviorTree.ROS2**          | https://github.com/BehaviorTree/BehaviorTree.ROS2.git              | humble | BehaviorTree.CPP ROS2 wrappers |

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

```bash
mkdir -p .cache
mkdir -p .local
```
