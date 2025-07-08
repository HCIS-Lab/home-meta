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
| **home_interfaces**   | https://github.com/HCIS-Lab/home-interfaces.git   | main | Defines custom ROS2 msg, srv, action for inter-node communication |
| **home_nlp**          | https://github.com/HCIS-Lab/home-nlp.git          | main | Manages speech-related functions, including microphone, ASR, and LLM nodes |
| **home_grasp**        | https://github.com/HCIS-Lab/home-grasp.git        | main | Grasp action |
| **home_speak**        | https://github.com/HCIS-Lab/home-speak.git        | main | Speak action |
| **home_navigation**        | https://github.com/HCIS-Lab/home-navigation.git        | main | Navigate action |
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

## Documentation

- [ROS2 Basics](./docs/ros2_basics.md)
- [Developing inside a Container](./docs/devcontainer.md)
