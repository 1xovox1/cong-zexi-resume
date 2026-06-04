@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo.
echo  正在启动简历网站...
echo  请在浏览器打开: http://localhost:3456
echo.
echo  不要关闭本黑窗口，关掉网站就停了。
echo.
start "" "http://localhost:3456"
python -m http.server 3456
pause
