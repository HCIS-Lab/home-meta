```bash
python3 -m venv venvs/home_speak --system-site-packages
. venvs/home_speak/bin/activate
python3 -m pip install -r src/home_speak/requirements.txt
python3 -m colcon build --symlink-install --event-handlers console_cohesion+ --packages-select home_speak
```
