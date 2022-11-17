#!/usr/bin/env sh

# 忽略错误
set -e

# 进行构建
npm run docs:build

# 进入待发布的目录
cd docs/.vitepress/dist


git add .
git commit -m 'deploy'


# 如果部署到 https://<USERNAME>.github.io
git push -u origin master


cd -