package home

import (
	"github.com/hunterhug/beautyart/models/blog"
	"github.com/astaxie/beego/orm"
)

type MainController struct {
	baseController
}

//首页
func (this *MainController) Index() {
	//网站配置
	config := new(blog.Config)
	config.Id = 1
	config.Read()
	this.Data["config"] = config

	//轮转图
	roll := new(blog.Roll)
	rolls := []orm.Params{}
	roll.Query().Filter("Status", 1).OrderBy("-Sort", "Createtime").Values(&rolls)
	this.Data["roll"] = rolls

	//目录
	//文章列表首页
	category := new(blog.Category)
	categorys := []orm.Params{}
	//查询条件：缀美文章类型，一级
	beautyid:=0
	blogtype:=0
	category.Query().Filter("Status",1).Filter("Pid", 0).Filter("Siteid", beautyid).Filter("Type", blogtype).OrderBy("-Sort", "Createtime").Values(&categorys, "Id", "Title")
	for _, cate := range categorys {
		//二级
		son := []orm.Params{}
		category.Query().Filter("Pid", cate["Id"]).OrderBy("-Sort", "Createtime").Values(&son, "Id", "Title")
		cate["Son"] = son
	}
	this.Data["category"] = &categorys

	this.TplName = this.GetTemplate() + "/index.html"
}