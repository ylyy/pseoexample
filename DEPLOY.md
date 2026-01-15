# 部署指南

## GitLab Pages 部署步骤

### 1. 创建 GitLab 仓库

1. 登录 GitLab
2. 创建新项目（Project）
3. 复制仓库 URL

### 2. 初始化 Git 并推送

```bash
# 初始化 Git 仓库
git init

# 添加远程仓库（替换为你的 GitLab 仓库 URL）
git remote add origin https://gitlab.com/your-username/pseoexample.git

# 添加所有文件
git add .

# 提交
git commit -m "Initial commit: React learning hub with PSEO strategy"

# 推送到 GitLab
git push -u origin main
```

### 3. 配置 GitLab Pages

1. 进入项目设置（Settings）
2. 找到 Pages 设置
3. 选择部署分支（main 或 master）
4. 等待 CI/CD 管道完成

### 4. 访问网站

部署完成后，网站将在以下地址可用：
```
https://your-username.gitlab.io/pseoexample/
```

### 5. 更新 sitemap.xml

部署后，记得更新 `sitemap.xml` 中的域名：
- 将 `your-username.gitlab.io` 替换为你的实际 GitLab Pages 域名

### 6. 更新 robots.txt

同样更新 `robots.txt` 中的 sitemap URL。

## 内链策略说明

本项目实现了单向漏斗内链结构：

- **lab/** → **guide/tool** （实验区指向指南和工具）
- **guide/tool** → **compare/live** （指南和工具指向对比和实战）
- **禁止反向链接** （compare/live 不链回 lab）

这符合 NICHEDIGGER PSEO 策略，确保权重正确流向。
