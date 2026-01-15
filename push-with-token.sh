#!/bin/bash

# 使用 Token 推送的脚本
# 使用方法：./push-with-token.sh YOUR_TOKEN

if [ -z "$1" ]; then
    echo "❌ 错误：请提供 Personal Access Token"
    echo ""
    echo "使用方法："
    echo "  ./push-with-token.sh YOUR_TOKEN"
    echo ""
    echo "如何获取 Token："
    echo "  1. 访问：https://gitlab.com/-/user_settings/personal_access_tokens"
    echo "  2. 创建新 Token，权限选择 write_repository"
    echo "  3. 复制 Token 并运行此脚本"
    exit 1
fi

TOKEN=$1
GITLAB_URL="https://gitlab.com/gmalpaicm/pseoexample.git"

echo "🔐 配置远程仓库（使用 Token）..."
git remote remove origin 2>/dev/null
git remote add origin "https://oauth2:${TOKEN}@gitlab.com/gmalpaicm/pseoexample.git"

echo "📤 推送到 GitLab..."
git push -u origin master

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ 推送成功！"
    echo ""
    echo "🌐 接下来："
    echo "  1. 访问：https://gitlab.com/gmalpaicm/pseoexample/-/pipelines"
    echo "  2. 等待 CI/CD 完成（变成绿色 ✅）"
    echo "  3. 访问：https://gitlab.com/gmalpaicm/pseoexample/-/settings/pages"
    echo "  4. 查看你的网站地址：https://gmalpaicm.gitlab.io/pseoexample/"
else
    echo ""
    echo "❌ 推送失败，请检查："
    echo "  1. Token 是否正确"
    echo "  2. Token 是否有 write_repository 权限"
    echo "  3. 网络连接是否正常"
fi
