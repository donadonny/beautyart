package blog

import (
	_ "github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	"github.com/hunterhug/beautyart/models/blog"
)

type CategoryController struct {
	baseController
}

func (this *CategoryController) Index() {
	/*
	   status: status,
	     mulu: mulu
	*/
	category := new(blog.Category)
	categorys := []orm.Params{}
	if this.IsAjax() {
		status, _ := this.GetInt64("status", 0)
		mulu, _ := this.GetInt64("mulu", 0)
		// beego.Trace(status, mulu)
		if status == 0 {
			category.Query().Filter("Pid", mulu).OrderBy("-Sort", "Createtime").Values(&categorys)
		} else {
			category.Query().Filter("Pid", mulu).Filter("Status", status).OrderBy("-Sort", "Createtime").Values(&categorys)
		}
		count := len(categorys)
		// beego.Trace("%v", categorys)
		this.Data["json"] = &map[string]interface{}{"total": count, "rows": &categorys}
		this.ServeJSON()
		return
	} else {
		category.Query().Filter("Pid", 0).OrderBy("-Sort", "Createtime").Values(&categorys)
		this.Data["category"] = &categorys
		this.Layout = this.GetTemplate() + "/blog/layout.html"
		this.TplName = this.GetTemplate() + "/blog/listcate.html"
	}
}

func (this *CategoryController) AddCategory() {
	this.TplName = this.GetTemplate() + "/blog/addcate.html"
}

func (this *CategoryController) UpdateCategory() {
}

func (this *CategoryController) DeleteCategory() {
}
