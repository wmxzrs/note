#!/usr/bin/env sh

echo '开始执行命令'
# 生成静态文件
echo '执行命令：gitbook build .'
gitbook build .

# 进入生成的文件夹
echo "执行命令：cd ./_book\n"
cd ./_book

# 初始化一个仓库，仅仅是做了一个初始化的操作，项目里的文件还没有被跟踪
echo "执行命令：git init\n"
git init
echo "添加远程仓库地址："
git remote add origin git@github.com:wmxzrs/note.git
echo "uploader:"
git config user.email "wmxzrs@outlook.com"
git config user.name "deployer"



# 保存所有的修改
echo "执行命令：git add -A"
git add -A

# 把修改的文件提交
echo "执行命令：commit -m 'deploy'"
git commit -m 'deploy'


# 如果发布到 https://<USERNAME>.github.io/<REPO>
echo "执行命令：git push -f git@github.com:wmxzrs/note master:main"
git push origin main -f


# 返回到上一次的工作目录
echo "回到刚才工作目录"
cd -
