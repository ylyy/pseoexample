#!/bin/bash

# GitLab 仓库 URL - 请替换为你的实际仓库 URL
GITLAB_URL="https://gitlab.com/gmalpaicm/pseoexample.git"

echo "配置远程仓库..."
git remote remove origin 2>/dev/null
git remote add origin "$GITLAB_URL"

echo "推送到 GitLab..."
git push -u origin master

echo ""
echo "推送完成！"
echo ""
echo "如果 GitLab 使用 main 分支，请运行："
echo "  git branch -m master main"
echo "  git push -u origin main"
echo ""
echo "推送后，GitLab Pages 会自动部署。"
echo "部署完成后，网站将在以下地址可用："
echo "  https://gmalpaicm.gitlab.io/pseoexample/"
echo ""
echo "注意：首次部署可能需要几分钟时间。"
