# Developing inside a Container

You can use the provided Dev Container configuration (`.devcontainer/`) to set up a consistent development environment.

## Prerequisites

Make sure you have the following installed on your system:

* Docker (ensure the Docker daemon is running)
* Visual Studio Code
* Remote Development Extension Pack

## Steps to Use VS Code Dev Container

### Clone the Repository

```bash
git clone git@github.com:HCIS-Lab/home-meta.git ros2_ws
cd ros2_ws
```

### Prepare Local Directories

Before opening the Dev Container, create the following directories to ensure proper caching and local storage:

```bash
mkdir -p .cache
mkdir -p .local
```

### Open in VS Code

* Launch VS Code and open the repository folder.
* When prompted *"Reopen in Container"*, click **Yes**.
* If not prompted, press `F1` → search for **Remote-Containers: Reopen in Container**.

### Build and Start the Dev Container

* VS Code will automatically build the container based on `.devcontainer/devcontainer.json` and attach to it.
* The first build may take several minutes as it installs dependencies.

## (Optional) Improve Python Autocompletion

To improve Python autocompletion inside VS Code, you can add the following configuration to your local workspace `.vscode/settings.json`:

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

