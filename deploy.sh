#!/usr/bin/env sh

# 忽略错误
set -e

# 进行构建
npm run docs:build

# 进入待发布的目录
cd docs/.vitepress/dist

# 加入文件标识头
sed -i '5 i <meta name="msvalidate.01" content="C246CD2DBA296401E59B4D6C4A608161" />' index.html
sed -i '5 i <meta name="baidu-site-verification" content="code-ZoEDd8If6G" />' index.html


git add .
git commit -m 'deploy'
# git remote remove origin
git remote add git@github.com:IPreferToEatDinner/iprefertoeatdinner.github.io.git
git push -u origin master


cd -