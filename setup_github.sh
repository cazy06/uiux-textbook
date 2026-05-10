#!/bin/bash
# GitHub Pages セットアップスクリプト
# 実行方法: ターミナルで bash setup_github.sh

set -e
REPO="uiux-textbook"
USER="cazy06"
DIR="$(cd "$(dirname "$0")" && pwd)"

echo "📁 プロジェクト: $DIR"
cd "$DIR"

# 壊れた .git があれば削除して再作成
if [ -d ".git" ]; then
  echo "🔄 既存の .git を削除して再初期化します..."
  rm -rf .git
fi

echo "🚀 git 初期化中..."
git init
git config user.name "KAJI"
git config user.email "cazy06@gmail.com"
git checkout -b main

echo "📦 ファイルをステージング..."
git add .
git commit -m "Initial commit: UI/UX デザインの教科書"

echo ""
echo "✅ ローカルのgitリポジトリが完成しました。"
echo ""

# gh CLI があればそのまま作成・push
if command -v gh &> /dev/null; then
  echo "🔗 GitHub CLIでリポジトリを作成中..."
  gh repo create "$USER/$REPO" --public --source=. --remote=origin --push
  echo ""
  echo "🎉 完了！GitHub Pages を有効にしてください："
  echo "   https://github.com/$USER/$REPO/settings/pages"
  echo "   Source: Deploy from a branch / main / (root)"
  echo ""
  echo "🌐 公開URL（数分後）: https://$USER.github.io/$REPO/"
else
  echo "⚠️  GitHub CLI (gh) が見つかりません。以下の手順を手動で行ってください："
  echo ""
  echo "1. https://github.com/new でリポジトリを作成"
  echo "   名前: $REPO  /  Public を選択"
  echo ""
  echo "2. ターミナルで以下を実行:"
  echo "   git remote add origin https://github.com/$USER/$REPO.git"
  echo "   git push -u origin main"
  echo ""
  echo "3. Settings → Pages → Source: main / (root) → Save"
  echo "   公開URL: https://$USER.github.io/$REPO/"
fi
