# 项目名：广州缀美画室网站
# 开发者：陈锦瀚
# 开发语言:Go!!!!

# 项目规划
	环境要求：golang=1.6,mysql=5.6
	起始时间：2016.6.10
	结束时间：

# 项目托管
	阿里云服务器：
	域名：

# 参考

1. 基于角色的访问控制（Role-Based Access Control）作为传统访问控制
2. beego框架
3. Amazi Ui和EasyUi、Bootstrap混合

# 运行步骤

1. 运行init.sh进行包初始化
2. 接着

	cd beauty
	go build main.go
	./main -s
	./main

可自由修改源代码，但必须保留友好链接

	<a href="">广州缀美画室</a>

# 联系方式
https://www.github.com/hunterhug 
QQ：569929309
	
# 项目约定

1. RBAC权限相关的models和controllers统一放在admin文件夹，其他都在home文件夹
2. URL router统一M/C/A方式，该方式需要验证权限，如rbac/public/index，其他如public/index不验证
3. 模板灵活处理