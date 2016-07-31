package home

import (
	"github.com/astaxie/beego/orm"
	"github.com/hunterhug/beautyart/models/blog"
	"strconv"
	"github.com/astaxie/beego"
)

func (this *MainController) Paper() {
	id := this.Ctx.Input.Param(":cid")
	pa:=this.Ctx.Input.Param(":id") //文章id
		beego.Trace("%v:%v",id,pa)
	patemp:=new(blog.Paper)

	pid,errp:=strconv.Atoi(pa)
	if errp!=nil{
		this.Rsp(false,"你要干嘛？")
	}
	patemp.Id=int64(pid)
	//不存在文章
	n,errp1:=patemp.Query().Count()
	if n==0 || errp1!=nil{
		this.Rsp(false,"不存在文章。。。")
	}
	patemp.Read()
	this.Data["paper"]=patemp

	types := 0
	err, category := getcategory(id)
	if err != nil {
		err, category = getalbum(id)
		if err != nil {
			this.Rsp(false, "没有这个分类啊，哥哥")
		} else {
			types = 1
		}
	}

	//本大爷
	this.Data["thiscategory"] = category

	//附录爸爸
	cid := category["Pid"]
	father := new(blog.Category)
	father.Id = cid.(int64)
	err1:=father.Read()
	if err1!=nil{

	}else {
		this.Data["father"] = father
	}
	//附录儿子
	son := []orm.Params{}
	new(blog.Category).Query().Filter("Pid", category["Id"].(int64)).Filter("Status", 1).OrderBy("-Sort", "Createtime").Values(&son, "Title")
	this.Data["son"] = son

	//文章儿子
	papers := []orm.Params{}
	new(blog.Paper).Query().Filter("Cid",category["Id"].(int64)).Filter("Status", 1).OrderBy("-Istop", "Createtime").Limit(6).Values(&papers)
	this.Data["papers"] = papers

	////图片轮转
	//roll := new(blog.Roll)
	//rolls := []orm.Params{}
	//roll.Query().Filter("Status", 1).OrderBy("-Sort", "Createtime").Values(&rolls)
	//this.Data["roll"] = rolls

	if types == 0 {
		this.TplName = this.GetTemplate() + "/paper.html"
	} else {
		this.TplName = this.GetTemplate() + "/paper.html"
	}
}
