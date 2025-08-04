# home-meta

[![Ubuntu](https://img.shields.io/badge/Ubuntu-22.04.5-E95420.svg?style=flat&logo=ros&logoColor=white)](https://releases.ubuntu.com/jammy/)
[![ROS2](https://img.shields.io/badge/ROS2-Humble-22314E.svg?style=flat&logo=ros&logoColor=white)](https://docs.ros.org/en/humble/index.html)
[![python](https://img.shields.io/badge/Python-3.10.12-3776AB.svg?style=flat&logo=python&logoColor=white)](https://www.python.org)

Monorepo for managing and building the **HCIS-Lab Home Robot Stack**.

This repository mainly serves as the meta repository for pulling and building related sub-projects using `home.repos` and `vcs`.  
It also includes setup scripts and development container configurations.

## Getting Started

```bash
git clone git@github.com:HCIS-Lab/home-meta.git ros2_ws
cd ros2_ws

chmod +x scripts/*
./script/setup.sh

# Build ROS2 packages
colcon build
```

## Documentation

* [Developing inside a Container](./docs/devcontainer.md)
* [Using Python Virtual Environments (`venv`) in ROS 2](./docs/ros2_venv.md)
* [ROS2 Basics](./docs/ros2_basics.md)

## Sub-repositories

This meta repo pulls in the following sub-projects:

| Repository        | Branch | Description                                      |
|-------------------|--------|--------------------------------------------------|
| [home_nlp](https://github.com/HCIS-Lab/home-nlp.git) | 1.0.0 | Manages speech-related functions, including microphone, ASR, and LLM nodes |
| [home_grasp](https://github.com/HCIS-Lab/home-grasp.git) | main | Grasp action |
| [home_speak](https://github.com/HCIS-Lab/home-speak.git) | main | Speak action |
| [home_navigation](https://github.com/HCIS-Lab/home-navigation.git) | main | Navigate action |
| [yolo_ros](https://github.com/lnfu/yolo_ros.git) | feature/image-compression | YOLO implementation for ROS |
| [BehaviorTree.CPP](https://github.com/BehaviorTree/BehaviorTree.CPP.git) | 4.6.2 | Behavior tree C++ implementation |
| [BehaviorTree.ROS2](https://github.com/BehaviorTree/BehaviorTree.ROS2.git) | humble | BehaviorTree.CPP ROS2 wrappers |
| [home_interfaces](https://github.com/HCIS-Lab/home-interfaces.git) | main | Defines custom ROS2 msg, srv, action for inter-node communication |

