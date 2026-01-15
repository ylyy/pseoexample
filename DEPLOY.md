# 部署指南

## Netlify 自动部署（推荐）

### 快速部署步骤

1. **访问 Netlify**
   - 打开：https://www.netlify.com/
   - 使用 GitHub 账号登录（最简单）

2. **连接 Git 仓库**
   - 点击 "Add new site" → "Import an existing project"
   - 选择 GitHub 或 GitLab
   - 选择你的仓库
   - Netlify 会自动检测 `netlify.toml` 配置

3. **完成部署**
   - 点击 "Deploy site"
   - 等待 1-2 分钟
   - 网站自动上线！

### 自动部署

设置完成后，以后只需要：
```bash
git add .
git commit -m "更新内容"
git push
```

Netlify 会自动检测变化并部署，完全不需要手动操作！

### 详细步骤

查看 `Netlify自动部署设置.md` 获取完整设置说明。

---

## 内链策略说明

本项目实现了单向漏斗内链结构：

- **lab/** → **guide/tool** （实验区指向指南和工具）
- **guide/tool** → **compare/live** （指南和工具指向对比和实战）
- **禁止反向链接** （compare/live 不链回 lab）

这符合 NICHEDIGGER PSEO 策略，确保权重正确流向。
