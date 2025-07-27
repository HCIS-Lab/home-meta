# ROS2 Python `venv`

TODO: python3 -m 有沒有的差別?

```bash
python3 -m venv venvs/home_speak --system-site-packages
. venvs/home_speak/bin/activate
python3 -m pip install -r src/home_speak/requirements.txt
python3 -m colcon build --symlink-install --event-handlers console_cohesion+ --packages-select home_speak
```

```
python3 -m venv venvs/yolo_ros --system-site-packages
. venvs/home_speak/bin/yolo_ros

python3 -m pip install -r src/yolo_ros/requirements.txt
python3 -m pip install ftfy regex tqdm
python3 -m pip install git+https://github.com/openai/CLIP.git

python3 -m colcon build --symlink-install --event-handlers console_cohesion+ --packages-select yolo_ros
```