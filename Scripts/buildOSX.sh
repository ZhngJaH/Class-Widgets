#!/usr/bin/env bash
uv venv
source .venv/bin/activate
uv pip install -r requirements.txt
uv pip install pyinstaller
pyinstaller main.py \
-w \
-i ./img/favicon.icns \
-n "Class Widgets" \
--contents-directory . \
--add-data config:config \
--add-data audio:audio \
--add-data img:img \
--add-data ui:ui \
--add-data font:font \
--add-data view:view \
--add-data LICENSE:. \
--add-data plugins:plugins \
--hidden-import darkdetect
