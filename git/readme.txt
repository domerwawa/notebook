1. 添加到本地索引
git add .
2. 添加到本地库
git commit -m "XXX"
3. 推送到远程库
git push
4. 取到本地库
git pull
5. 克隆本地库
git clone
6. 取回所有branch
git branch fetch
7. 查看全部branch
git branch -a
8. 查看本地branch
git branch -r
9. 切换branch XXX
git checkout -b XXX origin/XXX
10. 切换回branch master
git checkout master

2. 创建ssh key
打开git bash
测试本地有没有key
cd ~/.ssh
ssh-keygen -t rsa -C "your email"
一路回车
C:\Users\Administrator\.ssh\id_rsa.pub复制到github上的ssh key去
测试连接
ssh -T git@github.com
yes

3. 设置username usermail
git config --global user.name "adams_zhou"
git config --global user.email "xxx@gmail.com"
git config --list     列表
git config user.name  显示名字

4. 设置远程项目库
git remote set-url origin git@github.com:xxx.git

5. 提交时改变换行符
git config --global core.autocrlf true   上传LF,下载变回CRLF
git config --global core.autocrlf input   上传LF,下载不变
git config --global core.autocrlf false   都不变
或.gitconfig
[core]
  autocrlf = input
多个项目时也可在项目目录单独配置，不陪全局
git config --global core.autocrlf true

git config --global core.autocrlf input
