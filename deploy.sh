#!/usr/bin/env sh

# 忽略错误
set -e

# 构建
npm run docs:build

# 进入待发布的目录
cd docs/.vitepress/dist

# 加入文件标识头
sed -i '5 i <meta name="msvalidate.01" content="C246CD2DBA296401E59B4D6C4A608161" />' index.html
sed -i '5 i <meta name="baidu-site-verification" content="code-ZoEDd8If6G" />' index.html


git init
git add -A
git commit -m 'deploy'

# 如果部署到 https://<USERNAME>.github.io
git push -f git@github.com:IPreferToEatDinner/iprefertoeatdinner.github.io.git master

# 如果是部署到 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages

cd -