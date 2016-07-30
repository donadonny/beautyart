package home

import (
	"github.com/hunterhug/beautyart/models/blog"
	"github.com/astaxie/beego/orm"
	"errors"
	//"github.com/astaxie/beego"
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

	this.Data["category"]=getmulu(0,0)
	this.Data["photo"]=getmulu(0,1)

	//首页
	list1:=map[string]string{"1":"每日动态","2":"画室动态","3":"招生动态","4":"美术资讯","5":"高考喜报","8":"学生作品"}
	for i,title:=range list1 {
		_, td, tc := getjinhan(title, 6)
		//beego.Trace("%v",t1c)
		this.Data["t" + i] = td
		this.Data["t" + i + "c"] = tc
	}

	list2:=map[string]string{"6":"学员风采","7":"教师风采"}
	for i,title:=range list2 {
		_, td, tc := getjinhan(title, 3)
		//beego.Trace("%v",t1c)
		this.Data["t" + i] = td
		this.Data["t" + i + "c"] = tc
	}
	this.TplName = this.GetTemplate() + "/index.html"
}

func (this *MainController) Category(){
	id:=this.Ctx.Input.Param(":id")
	this.Rsp(true,id)
}

func getmulu(beautyid int,blogtype int) []orm.Params{
		//目录
	//文章列表首页
	category := new(blog.Category)
	categorys := []orm.Params{}
	//查询条件：缀美文章类型，一级
	category.Query().Filter("Status",1).Filter("Pid", 0).Filter("Siteid", beautyid).Filter("Type", blogtype).OrderBy("-Sort", "Createtime").Values(&categorys, "Id", "Title")
	for _, cate := range categorys {
		//二级
		son := []orm.Params{}
		category.Query().Filter("Pid", cate["Id"]).OrderBy("-Sort", "Createtime").Values(&son, "Id", "Title")
		cate["Son"] = son
	}
	return  categorys

}

func  getjinhan(title string,count int)(error,[]orm.Params,orm.Params){
	err,category:=getcategory(title)
	if err!=nil{
		err,album:=getalbum(title)
		if err!=nil{
			return errors.New("找不到该目录"),[]orm.Params{},album
		}else{
			id:=album["Id"].(int64)
			return nil,getphoto(id,count),album
		}
	}else{
		id:=category["Id"].(int64)
		return nil,getpaper(id,count),category
	}
}
//获取开启的文章，按置顶
func getpaper(id int64,count int)[]orm.Params{
	paper:=new(blog.Paper)
	papers:=[]orm.Params{}
	paper.Query().Filter("Cid",id).Filter("Type",0).Filter("Status",1).OrderBy("-Istop","Createtime").Limit(count,0).Values(&papers)
	return papers
}

//获取开启的图片，按轮转，置顶
func getphoto(id int64,count int)[]orm.Params{
	paper:=new(blog.Paper)
	papers:=[]orm.Params{}
	paper.Query().Filter("Cid",id).Filter("Type",1).Filter("Status",1).OrderBy("-Isroll","-Istop","Createtime").Limit(count,0).Values(&papers)
	return papers
}

//获取文章目录
func getcategory(title string) (error,orm.Params){
	category:=new(blog.Category)
	categorys:=[]orm.Params{}
	category.Query().Filter("Type",0).Filter("Siteid",0).Filter("Title",title).Limit(1).Values(&categorys)
	if len(categorys)==0{
		return errors.New("找不到文章分类"),orm.Params{}
	}else{
		return nil,categorys[0]
	}
}

//获取相册目录
func getalbum(title string) (error,orm.Params){
	category:=new(blog.Category)
	categorys:=[]orm.Params{}
	category.Query().Filter("Type",1).Filter("Siteid",0).Filter("Title",title).Limit(1).Values(&categorys)
	if len(categorys)==0{
		return errors.New("找不到相册分类"),orm.Params{}
	}else{
		return nil,categorys[0]
	}
}