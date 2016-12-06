# 项目名：画室官网

```
目标：wordpress的多模板切换，能行的，加油！
官网域名待启用,暂时用二级域名~~
一个支持多用户权限控制，拥有基本博客功能，可扩展的网站应用
暂时有用户管理，文章管理，相册管理，评论，可扩展式内容管理系统
开发语言:Go!!!!
想听故事吗？摸过大部分语言,go最小巧，而且我喜欢c语言，简单！可是c语言很难写网站
用php和java重构过同一种网站,Python写过爬虫，现在大部分还是用python

// ░░░░░░░░▌▒█░░░░░░░░░░░▄▀▒▌
// ░░░░░░░░▌▒▒█░░░░░░░░▄▀▒▒▒▐
// ░░░░░░░▐▄▀▒▒▀▀▀▀▄▄▄▀▒▒▒▒▒▐
// ░░░░░▄▄▀▒░▒▒▒▒▒▒▒▒▒█▒▒▄█▒▐ 
// ░░░▄▀▒▒▒░░░▒▒▒░░░▒▒▒▀██▀▒▌
// ░░▐▒▒▒▄▄▒▒▒▒░░░▒▒▒▒▒▒▒▀▄▒▒
// ░░▌░░▌█▀▒▒▒▒▒▄▀█▄▒▒▒▒▒▒▒█▒▐
// ░▐░░░▒▒▒▒▒▒▒▒▌██▀▒▒░░░▒▒▒▀▄
// ░▌░▒▄██▄▒▒▒▒▒▒▒▒▒░░░░░░▒▒▒▒
// ▀▒▀▐▄█▄█▌▄░▀▒▒░░░░░░░░░░▒▒▒
```

使用源代码请保留以下链接:

```
<a href='http://beauty.lenggirl.com'>广州缀美美术学校官网|缀美画室</a>
```

域名：[http://www.beautyart.top](http://www.beautyart.top),[http://beauty.lenggirl.com](http://beauty.lenggirl.com)

## 文件目录
```
beautyart
----conf 配置文件夹

	----app.conf 		应用配置文件
	----local_**.ini 	国际化文件

----controllers 控制器
	----admin	后台控制器
		----blog 博客模块
		----rbac 权限模块
	----home 	前台控制器

-----lib 公共库
-----file 上传文件保存地址
-----models ORM模型
	----admin RBAC主要数据库
	----blog 博客主要数据库
	----home 

----routers 路由
----static  静态文件
----views	视图
	----admin 	后台视图
		----default 默认主题
	----home 	前台视图
		----default 默认主题

----log 日志
----doc 说明文档
----test 测试文件夹
```

## 运行步骤
1.运行init.sh进行包初始化或者根据提示go install

2.接着获取代码

```
    go get -u -v github.com/hunterhug/beautyart
    或者
	git clone https://www.github.com/hunterhug/beautyart
```

3.初始化数据库beauty.sql

```
beauty.sql导入数据库
或者
go build main.go 
./main -s
```

4.运行

```
go build main.go
./main
或者
go run main.go
或者
bee run
```

5.nginx配置 nginx.conf

```
server{
        listen 80;
        server_name beauty.lenggirl.com www.beautyart.top;
        charset utf-8;
        access_log /data/logs/nginx/beauty.lenggirl.com.log;
        #error_log /data/logs/nginx/www.lenggirl.com.err;
        location / {
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header Host $http_host;
        proxy_redirect off;
        proxy_pass http://localhost:8080;
        }
        
}
```

server_name和proxy_pass需要改

6.填写配置文件conf/app.conf

```
appname = beauty
version = 1.0.0

# 生产环境改为prod
runmode = dev

###################

# 可以直接通过静态访问的文件夹，位于根目录下面
StaticDir = static:static file:file

# 国际化语言
lang_types = en-US|zh-CN

# 路由区分大小写
RouterCaseSensitive = false

# 中国时间请设为8，不然数据库时间会混乱
timezone = 8

# 调试数据库 close/open
dblog = close

###################

# 前台模板，可以改,wordpress功能
home_template = home/default
admin_template = admin/default

# 文件上传保存地址，后面不可以是/，必须是根目录下的文件夹，为了速度更快，文件直接到前端，可改写
filebasepath = file

###################

# 权限控制，建议不要乱改
sessionon = true
sessionname = beautysessionid
sessionhashkey = mostbeautyart
rbac_role_table = role
rbac_node_table = node
rbac_group_table = group
rbac_user_table = user
rbac_admin_user = admin
not_auth_package = public,static,home,file

###################

# 0不验证，1验证，2实时验证,建议不要改
user_auth_type = 2
rbac_auth_gateway = /public/login

# cookie一周内登录开关，1表示开，建议设为0
cookie7 = 0

[dev]
httpport = 8080
db_host = 127.0.0.1
db_port = 3306
db_user = root
db_pass = 6833066
db_name = beauty
db_type = mysql
db_prefix = tb_

[prod]
EnableGzip = true
httpport = 80
db_host = 127.0.0.1
db_port = 3306
db_user = root
db_pass = root
db_name = beauty
db_type = mysql
db_prefix = tb_
```

## 项目约定
>RBAC权限相关的models统一放在admin文件夹，其他都放在home文件夹.
	前台控制相关的controllers统一放在home文件夹，其他都放在admin文件夹
	URL router统一M/C/A方式，该正则url需要验证权限，如rbac/public/index，其他如public/index不验证。

>登录说明
	登陆过的用户只能注销后登录，支持定义cookie登录。进入后台时验证session，session不存在则验证cookie，如果用户未被冻结，增加session，
	同时更改用户登录时间、登录IP等，cookie与登录IP绑定。

>系统时间默认数据库本地时间为东八区，北京时间。

>后台模板在views/admin，前台模板在views/home，子文件夹为主题，默认主题为default

>所有配置在conf文件夹conf/app.conf，支持国际化

>数据库数据填充在models/*/*Init.go中定义

>视图模板均放在static中

>图片上传参考文档doc/文件上传说明.md(待写)

>Category模型说明

```
	Siteid    int64  //0缀美   1其他网站
	Type int64     //0表示文章 1表示相册
```

>前台首页配置（可动态调整首页）

```
{"1":{"name":"每日动态","limit":6},
"2":{"name":"画室动态","limit":6},
"3":{"name":"招生动态","limit":6},
"4":{"name":"美术资讯","limit":6},
"5":{"name":"高考喜报","limit":6},
"6":{"name":"学员风采","limit":3},
"7":{"name":"教师风采","limit":3},
"8":{"name":"学生作品","limit":6}}
```

## 项目进展
1. 开发手脚架搭建完毕，RBAC模块完成，2016/7/2
2. 文章相册模块合二为一，完成一半，2016/7/15
3. 文章模块完成，待copy相册模块，2016/7/24
4. 轮转模块、网站配置模块完成，后台功能完成，准备前端设计，2016/7/28
5. 前端准备仿照http://www.caa.edu.cn/index.html
6. 首页改造完成，修复后台bug，差其余前端 2016/7/31
7. 前端开发完毕  2016/8/2
8. 内容填充完毕　2016/8/5

## 待做
1. 图片裁剪或者调用七牛云，阿里云等（一周时间）
2. 文章历史记录归档，方便查看，否则乱啊（一周时间）
3. APP应用，前端判断设备进行前端页面切换（一周时间）
4. 域名备案（愁啊。。。。无限延期）


## 联系方式
>https://www.github.com/hunterhug 
><p>QQ：569929309


## 参考
>1. 基于角色的访问控制（Role-Based Access Control）作为传统访问控制
>2. 使用beego框架和大量javascript脚本ajax调用
>3.　Amaze UI v2.7.0和jQuery EasyUI 1.4.2、Bootstrap混合（xx)
>4. 图片延迟加载

## 前端展示
<img src='https://raw.githubusercontent.com/hunterhug/beautyart/master/doc/seeme.jpg' />
<img src='https://raw.githubusercontent.com/hunterhug/beautyart/master/doc/seemok.png' />
<img src='https://raw.githubusercontent.com/hunterhug/beautyart/master/doc/seeme3.png' />

https://github.com/hunterhug/go_tool

The MIT License (MIT)
