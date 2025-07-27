#!/usr/bin/env bash

set -euo pipefail

colcon build --symlink-install --event-handlers console_cohesion+ --packages-select behaviortree_cpp
colcon build --symlink-install --event-handlers console_cohesion+ --packages-select btcpp_ros2_interfaces
colcon build --symlink-install --event-handlers console_cohesion+ --packages-select behaviortree_ros2
colcon build --symlink-install --event-handlers console_cohesion+ --packages-select btcpp_ros2_samples
colcon build --symlink-install --event-handlers console_cohesion+
