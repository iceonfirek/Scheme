
在github上新建一个仓库，创建时有一个https地址，记录此地址，后面用
打开git bash，转到你所要上传的文件夹目录下，并输入git init
将项目添加到仓库中去：git add .，如果添加某个文件，可以使用git add xxx
将添加的文件提交到仓库：git commit -m "--注释--"
将仓库关联到github：git remote add origin https://xxxx，https为刚才github上创建仓库的地址
把文件推送到github仓库：git push -u origin master，下次推送时，可以把-u去掉
