# Developing inside a Container

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
