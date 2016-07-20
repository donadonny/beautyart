package blog


import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	"github.com/hunterhug/beautyart/models/blog"
)

type PaperController struct {
	baseController
}

func (this *PaperController) Index() {

	if this.IsAjax() {
		paper := new(blog.Paper)
		papers := []orm.Params{}
		//默认状态为关闭
		status, _ := this.GetInt64("status", 0)
		//分类可以为空，列出所有
		cid, _ := this.GetInt64("cid", 0)
		if cid == 0 {
			paper.Query().Filter("Status", status).OrderBy("-Sort","-Isroll","-View", "Createtime").Values(&papers)
		} else {
			paper.Query().Filter("Cid", cid).Filter("Status", status).OrderBy("-Sort","-Isroll","-View", "Createtime").Values(&papers)
		}
		count := len(papers)
		// beego.Trace("%v", categorys)
		this.Data["json"] = &map[string]interface{}{"total": count, "rows": &papers}
		this.ServeJSON()
	} else {
		category := new(blog.Category)
		categorys := []orm.Params{}
		category.Query().Filter("Pid", 0).Filter("Siteid", beautyid).Filter("Type", blogtype).OrderBy("-Sort", "Createtime").Values(&categorys, "Id", "Title")
		for _, cate := range categorys {
			son := []orm.Params{}
			category.Query().Filter("Pid", cate["Id"]).OrderBy("-Sort", "Createtime").Values(&son, "Id", "Title")
			cate["Son"] = son
		}
		beego.Trace("%v", categorys)
		this.Data["category"] = &categorys
		this.Layout = this.GetTemplate() + "/blog/layout.html"
		this.TplName = this.GetTemplate() + "/blog/listpaper.html"
	}
}

func (this *PaperController) AddPaper() {

}

func (this *PaperController) UpdatePaper() {

}

func (this *PaperController) DeletePaper() {

}

func (this *PaperController) RealDelPaper() {

}
