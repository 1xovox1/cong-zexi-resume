@echo off
chcp 65001 >nul
title 部署简历网站到 GitHub Pages
cd /d "%~dp0"

echo.
echo ========================================
echo   丛泽熙简历站 - 部署到 GitHub
echo ========================================
echo.
echo 若尚未在 GitHub 创建仓库，浏览器将打开创建页面。
echo 请新建仓库名：cong-zexi-resume （公开 Public，不要勾选 README）
echo.
pause
start "" "https://github.com/new?name=cong-zexi-resume&description=Personal+resume+site&visibility=public"
echo.
echo 创建好仓库后，按任意键开始推送代码...
pause >nul

git remote remove origin 2>nul
git remote add origin https://github.com/1xovox1/cong-zexi-resume.git
git branch -M main
git push -u origin main

if errorlevel 1 (
  echo.
  echo 推送失败。请确认：
  echo   1. 已在 github.com 创建 cong-zexi-resume 仓库
  echo   2. 已登录 GitHub（推送时会弹出浏览器登录）
  echo.
  pause
  exit /b 1
)

echo.
echo 代码已推送！请开启 GitHub Pages：
echo   Settings - Pages - Source: Deploy from branch - main - / (root)
echo.
echo 几分钟后访问：
echo   https://1xovox1.github.io/cong-zexi-resume/
echo.
start "" "https://github.com/1xovox1/cong-zexi-resume/settings/pages"
pause
