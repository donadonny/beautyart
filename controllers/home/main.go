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
	config:=new(blog.Config)
	config.Id=1
	config.Read()
	this.Data["config"]=config

	roll:=new(blog.Roll)
	rolls := []orm.Params{}
	roll.Query().Filter("Status",1).OrderBy("-Sort","Createtime").Values(&rolls)
	this.Data["roll"]=rolls
	this.TplName=this.GetTemplate()+"/index.html"
}