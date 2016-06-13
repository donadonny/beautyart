package models

func InitData() {
	insertUser()
	insertOption()
}

func insertUser() {
	//INSERT INTO `tb_user` VALUES (1,'admin','7fef6171469e80d32c0559f88b377245','admin@admin.com',6,'127.0.0.1','2013-12-25 10:00:11','',1);
	u := new(User)
	u.Id = 1
	u.Password = Md5([]byte("6833066"))
	u.Active = 1
	u.Email = "569929309@qq.com"
	u.Username = "admin"
	u.Lastip = "127.0.0.1"
	u.Logincount = 0
	num, err := u.Query().Filter("Id", u.Id).Count()
	if err == nil && num == 0 {
		u.Insert()
	}
}

func insertOption() {
	//INSERT INTO `tb_option` (`id`, `name`, `value`) VALUES (1,'sitename','云卷云舒')
	//,(2,'siteurl','http://blog.doubleliu.com'),(3,'subtitle','带着相机去旅行'),
	//(4,'pagesize','2'),(5,'keywords','摄影'),(6,'description','来一场说走就走的旅行')
	//,(8,'theme','double'),(9,'timezone','8'),
	//(10,'stat',
	//,(11,'weibo','http://weibo.com/u/2000465995'),(12,'github','https://github.com/jxufeliujj'),(16,'duoshuo','doubleliu'),(17,'albumsize','9');
	o := Option{1, "sitename", "云卷云舒"}
	o.Insert()
	o = Option{2, "theme", "double"}
	o.Insert()
	o = Option{3, "timezone", "8"}
	o.Insert()
	o = Option{4, "sitename", "8"}
	o.Insert()
	o = Option{5, "siteurl", "8"}
	o.Insert()
	o = Option{6, "subtitle", "8"}
	o.Insert()
	o = Option{7, "pagesize", "2"}
	o.Insert()
	o = Option{8, "keywords", "2"}
	o.Insert()
	o = Option{9, "description", "2"}
	o = Option{10, "stat", ""}
	o.Insert()
	o = Option{11, "duoshuo", ""}
	o.Insert()
	o = Option{12, "weibo", ""}
	o.Insert()
	o = Option{13, "github", ""}
	o.Insert()
	o = Option{14, "albumsize", "3"}
	o.Insert()
}
