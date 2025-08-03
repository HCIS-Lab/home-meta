# Using Python Virtual Environments (`venv`) in ROS 2

When developing ROS 2 Python packages, you may need different dependencies or library versions for different packages.
Instead of forcing all packages to share the same Python environment, you can create separate `venv` environments for each package.

This approach prevents dependency conflicts between ROS 2 Python packages by allowing each package to maintain its own isolated environment.

## Example Workflow

Below are the instructions for creating a dedicated `venv`.
You can repeat the same steps for other packages by replacing `[package_name]` with your package name.

```bash
# 1. Create a virtual environment for your package
python3 -m venv venvs/[package_name] --system-site-packages

# 2. Activate the environment
. venvs/[package_name]/bin/activate

# 3. Install dependencies from requirements.txt
python3 -m pip install -r src/[package_name]/requirements.txt

# 4. Build only this package using colcon
python3 -m colcon build \
  --symlink-install \
  --event-handlers console_cohesion+ \
  --base-paths src \
  --packages-select [package_name]
```

## Example: `home_speak`

```bash
python3 -m venv venvs/home_speak --system-site-packages
. venvs/home_speak/bin/activate
python3 -m pip install -r src/home_speak/requirements.txt
python3 -m colcon build \
  --symlink-install \
  --event-handlers console_cohesion+ \
  --base-paths src \
  --packages-select home_speak
```
## Example: `home_nlp`

```bash
python3 -m venv venvs/home_nlp --system-site-packages
. venvs/home_nlp/bin/activate
python3 -m pip install -r src/home_nlp/requirements.txt
python3 -m colcon build \
  --symlink-install \
  --event-handlers console_cohesion+ \
  --base-paths src \
  --packages-select home_nlp
```


## Notes

* The `--system-site-packages` flag allows the virtual environment to access system-wide ROS 2 Python modules, while still letting you install custom versions of your own dependencies.
