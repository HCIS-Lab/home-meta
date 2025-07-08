# ROS2 Basics


## Create a Package

```bash
# python
ros2 pkg create --build-type ament_python <package_name>

# cmake
ros2 pkg create --build-type ament_cmake <package_name>
```

reference: https://docs.ros.org/en/humble/Tutorials/Beginner-Client-Libraries/Creating-Your-First-ROS2-Package.html

## Publish a message via ROS2 CLI

```bash
ros2 topic pub --once /transcription std_msgs/msg/String '{data: "Hello"}'
```

## Send action goal via ROS2 CLI

```bash
ros2 action send_goal [action_name] [action_type] [goal_json] --feedback

ros2 action send_goal /speak home_interfaces/action/Speak \
  '{sentence: "哈囉，好久不見"}' \
  --feedback
```
