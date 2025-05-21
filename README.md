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
