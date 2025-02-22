@echo off
echo 创建虚拟环境
uv venv
call .venv\Scripts\activate
echo 安装依赖
uv pip install -r requirements.txt
uv pip install pyinstaller
echo 打包
pyinstaller main.py `
  -w `
  -i ./img/favicon.ico `
  -n ClassWidgets `
  --contents-directory . `
  --add-data config:config `
  --add-data audio:audio `
  --add-data img:img `
  --add-data ui:ui `
  --add-data font:font `
  --add-data view:view `
  --add-data LICENSE:. `
  --add-data plugins:plugins `
  --hidden-import darkdetect
