# home-meta

Monorepo for managing and building the **HCIS-Lab Home Robot Stack**.

This repository mainly serves as the meta repository for pulling and building related sub-projects using `home.repos` and `vcs`.  
It also includes setup scripts and development container configurations.

## Sub-repositories

This meta repo pulls in the following sub-projects:

| Repository | URL | Branch |
|------------|-----|--------|
| **yolo_ros** | https://github.com/mgonzs13/yolo_ros.git | 4.2.0 |
| **home_grasp** | https://github.com/HCIS-Lab/home-grasp.git | main |
| **home_interfaces** | https://github.com/HCIS-Lab/home-interfaces.git | main |
| **home_nlp** | https://github.com/HCIS-Lab/home-nlp.git | main |

## Getting Started

```bash
git clone git@github.com:HCIS-Lab/home-meta.git
cd ros2_ws
mkdir -p src
vcs import src < home.repos

pip install -r src/yolo_ros/requirements.txt

rosdep update
sudo apt update
rosdep install --from-paths src --ignore-src -r -y
colcon build
```

## Notes

You can use the provided DevContainer (`.devcontainer/`) to set up a consistent development environment.

This repo serves only as a meta layer; all main code lives in the sub-repositories.
