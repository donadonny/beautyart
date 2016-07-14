package blog

import (
	// "fmt"
	// "github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	. "github.com/hunterhug/beautyart/lib"
	"github.com/hunterhug/beautyart/models/admin"
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
	user := this.GetSession("userinfo")
	isajax, _ := this.GetInt("isajax", 0)
	if isajax == 1 {
		status := false
		message := ""
		if user == nil {
			message = "session失效，请重新进入后台首页"
		} else {
			category := new(blog.Category)
			category.Createtime = GetTime()
			category.Username = user.(admin.User).Username
			category.Title = this.GetString("title", "")
			category.Pid, _ = this.GetInt("mulu", 0)
			category.Sort, _ = this.GetInt("order", 0)
			category.Status, _ = this.GetInt("status", 2)
			category.Content = this.GetString("content", "")
			err := category.Insert()
			if err != nil {
				message = err.Error()
			} else {
				status = true
				message = "增加成功"
			}
		}
		this.Rsp(status, message)
	} else {
		category := new(blog.Category)
		categorys := []orm.Params{}
		category.Query().Filter("Pid", 0).OrderBy("-Sort", "Createtime").Values(&categorys)
		this.Data["category"] = &categorys
		this.TplName = this.GetTemplate() + "/blog/addcate.html"
	}
}

func (this *CategoryController) UpdateCategory() {
	id, _ := this.GetInt64("id", 0)
	status, _ := this.GetInt("status", 0)
	if id == 0 || status == 0 {
		this.Rsp(false, "有问题")
	} else {
		category := new(blog.Category)
		category.Id = id
		category.Status = status
		category.Updatetime = GetTime()
		err := category.Update("Status", "Updatetime")
		if err != nil {
			this.Rsp(false, "更新失败")
		} else {
			this.Rsp(true, "更新成功")
		}
	}
}

func (this *CategoryController) DeleteCategory() {
}
