# 项目名：广州缀美画室网站
http://beauty.lenggirl.com
>开发语言:Go!!!!

-----
# 使用源代码请保留 `广州缀美美术学校官网|缀美画室` 链接:
>`<a href='http://beauty.lenggirl.com'>广州缀美美术学校官网|缀美画室</a>`


>```
>// ░░░░░░░░▌▒█░░░░░░░░░░░▄▀▒▌
>// ░░░░░░░░▌▒▒█░░░░░░░░▄▀▒▒▒▐
>// ░░░░░░░▐▄▀▒▒▀▀▀▀▄▄▄▀▒▒▒▒▒▐
>// ░░░░░▄▄▀▒░▒▒▒▒▒▒▒▒▒█▒▒▄█▒▐
>// ░░░▄▀▒▒▒░░░▒▒▒░░░▒▒▒▀██▀▒▌
>// ░░▐▒▒▒▄▄▒▒▒▒░░░▒▒▒▒▒▒▒▀▄▒▒
>// ░░▌░░▌█▀▒▒▒▒▒▄▀█▄▒▒▒▒▒▒▒█▒▐域名待启用,暂时用二级域名~~
>// ░▐░░░▒▒▒▒▒▒▒▒▌██▀▒▒░░░▒▒▒▀▄一个支持多用户权限控制，拥有基本博客功能，可扩展的网站应用
>// ░▌░▒▄██▄▒▒▒▒▒▒▒▒▒░░░░░░▒▒▒▒
>// ▀▒▀▐▄█▄█▌▄░▀▒▒░░░░░░░░░░▒▒▒
>```

<img src='https://raw.githubusercontent.com/hunterhug/beautyart/master/seeme.jpg' />
<img src='https://raw.githubusercontent.com/hunterhug/beautyart/master/seemok.png' />

## 项目规划
>环境要求：golang=1.6,mysql=5.6
><p>框架：	beego
><p>起始时间：2016.6.10
><p>结束时间：2016.

## 项目托管
>阿里云服务器： Ubuntu
><p>软件:ngnix
><p>域名：http://www.beautyart.top ,http://beauty.lenggirl.com

## 参考
1. 基于角色的访问控制（Role-Based Access Control）作为传统访问控制
2. 使用beego框架和大量javascript脚本ajax调用
3.　Amaze UI v2.7.0和jQuery EasyUI 1.4.2、Bootstrap混合（xx)
4. 图片延迟加载

## 运行步骤

1. 运行init.sh进行包初始化
2. 接着

```
	cd beauty
	go build main.go
	./main -s
	./main
```

>平台使用说明参见doc文件夹
><p>可自由修改源代码，但必须保留友好链接
><p>[http://beauty.lenggirl.com](广州缀美美术学校官网|缀美画室)

## 联系方式
>https://www.github.com/hunterhug 
><p>QQ：569929309


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

## 项目约定
1. >RBAC权限相关的models统一放在admin文件夹，其他都放在home文件夹.
	前台控制相关的controllers统一放在home文件夹，其他都放在admin文件夹
	URL router统一M/C/A方式，该正则url需要验证权限，如rbac/public/index，其他如public/index不验证。

2. >登录说明
	登陆过的用户只能注销后登录，支持定义cookie登录。进入后台时验证session，session不存在则验证cookie，如果用户未被冻结，增加session，
	同时更改用户登录时间、登录IP等，cookie与登录IP绑定。

3. >系统时间默认数据库本地时间为东八区，北京时间。

4. >后台模板在views/admin，前台模板在views/home，子文件夹为主题，默认主题为default

5. >所有配置在conf文件夹conf/app.conf，支持国际化

6. >数据库数据填充在models/*/*Init.go中定义

7. >视图模板均放在static中

8. >图片上传参考文档doc/文件上传说明.md

9. >Category模型说明

```
	Siteid    int64  //0缀美   1其他网站
	Type int64     //0表示文章 1表示相册
```

10. >前台首页配置

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

## 温馨提示
1. 注意休息，程序猿朋友们


## 项目进展
1. 开发手脚架搭建完毕，RBAC模块完成，2016/7/2
2. 文章相册模块合二为一，完成一半，2016/7/15
3. 文章模块完成，待copy相册模块，2016/7/24
4. 轮转模块、网站配置模块完成，后台功能完成，准备前端设计，2016/7/28
5. 前端准备仿照http://www.caa.edu.cn/index.html
6. 首页改造完成，修复后台bug，差其余前端 2016/7/31
7. 前端开发完毕  2016/8/2
8. 内容填充完毕　2016/8/5

##待做
1. 图片浓缩图提高速度
