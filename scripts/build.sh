#!/usr/bin/env bash

set -euo pipefail

colcon build --symlink-install --event-handlers console_cohesion+
