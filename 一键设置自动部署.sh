#!/bin/bash

# Netlify 自动部署一键设置脚本

echo "🚀 Netlify 自动部署设置"
echo "================================"
echo ""

# 检查 netlify.toml 是否存在
if [ ! -f "netlify.toml" ]; then
    echo "❌ 错误：找不到 netlify.toml 文件"
    exit 1
fi

echo "✅ netlify.toml 配置文件已存在"
echo ""

# 检查 public 文件夹
if [ ! -d "public" ]; then
    echo "📁 创建 public 文件夹..."
    mkdir -p public
    cp -r *.html public/ 2>/dev/null || true
    cp -r lab guide tool compare live public/ 2>/dev/null || true
    cp -r assets public/ 2>/dev/null || true
    cp robots.txt sitemap.xml public/ 2>/dev/null || true
    echo "✅ public 文件夹已创建"
else
    echo "✅ public 文件夹已存在"
fi

echo ""
echo "📋 下一步操作："
echo "================================"
echo ""
echo "1. 访问 https://www.netlify.com/"
echo "2. 登录账号（使用 GitHub 最简单）"
echo "3. 点击 'Add new site' → 'Import an existing project'"
echo "4. 选择 GitLab 或 GitHub"
echo "5. 选择仓库：gmalpaicm/pseoexample"
echo "6. Netlify 会自动检测 netlify.toml 配置"
echo "7. 点击 'Deploy site'"
echo ""
echo "✅ 设置完成后，以后只需要："
echo "   git add ."
echo "   git commit -m '更新'"
echo "   git push"
echo ""
echo "   Netlify 会自动部署！"
echo ""
echo "📖 详细步骤请查看：Netlify自动部署设置.md"
echo ""
