# ROS2 Basics

This document provides quick references for creating packages, publishing messages, and sending action goals in ROS 2.

## Create a Package

Use the following commands to create a new ROS 2 package:

```bash
# For Python packages
ros2 pkg create --build-type ament_python <package_name>

# For CMake packages (C++ or mixed)
ros2 pkg create --build-type ament_cmake <package_name>
```

Reference: [Creating a package](https://docs.ros.org/en/humble/Tutorials/Beginner-Client-Libraries/Creating-Your-First-ROS2-Package.html)

## Publish a Message via ROS 2 CLI

General format:

```bash
ros2 topic pub --once <topic_name> <message_type> '<message_json>'
```

### Examples

publish a one-time message to the `/transcription` topic.

```bash
ros2 topic pub --once /transcription std_msgs/msg/String '{data: "Hello"}'
```

## Send an Action Goal via ROS 2 CLI

General format:

```bash
ros2 action send_goal <action_name> <action_type> <goal_json> --feedback
```

### Examples

Speak action:

```bash
ros2 action send_goal /speak home_interfaces/action/Speak \
  '{sentence: "哈囉，好久不見"}' \
  --feedback
```

Grasp action:

```bash
ros2 action send_goal /grasp home_interfaces/action/Grasp "{
  class_name: 'sports ball'
}"

ros2 action send_goal /grasp home_interfaces/action/Grasp "{
  class_name: 'white bottle'
}"
```

## Launch the Stretch 3 Robot Driver & Realsense D405 Camera

During development, you will need to start both the Stretch 3 robot driver and the Realsense D405 camera.

```bash
ros2 launch stretch_core stretch_driver.launch.py
ros2 launch stretch_core d405_basic.launch.py
```
