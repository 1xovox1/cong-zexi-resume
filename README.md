# 丛泽熙 · 个人简历网站

蓝白清爽风格的静态简历站，可部署到 GitHub Pages。

## 本地预览

直接用浏览器打开 `index.html`，或：

```bash
npx serve .
```

## 部署到 GitHub Pages

本地已初始化 Git。双击 **`部署到GitHub.bat`** 按提示操作即可（会打开浏览器创建仓库并推送）。

或手动执行：

1. 打开 [新建仓库](https://github.com/new?name=cong-zexi-resume) → 仓库名 **`cong-zexi-resume`** → **Public** → 不要勾选「Add a README」→ Create
2. 在本目录执行：`git push -u origin main`（首次会弹出 GitHub 登录）
3. 仓库 **Settings → Pages** → Source：**Deploy from a branch** → **main** → **/ (root)** → Save
4. 等待 1～3 分钟后访问：**https://1xovox1.github.io/cong-zexi-resume/**

## 页面结构

- `index.html` — 主页
- `capabilities/agent.html` — Agent 能力深度页
- `projects/` — 三个项目详情页
