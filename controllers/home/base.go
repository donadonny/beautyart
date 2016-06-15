package home

import (
	"github.com/astaxie/beego"
	"github.com/beego/i18n"
	. "github.com/hunterhug/beautyart/models/home"
	"strconv"
	"strings"
)

const (
	BIG_PIC_PATH   = "./static/upload/bigpic/"
	SMALL_PIC_PATH = "./static/upload/smallpic/"
	FILE_PATH      = "./static/upload/attachment/"
)

var pathArr []string = []string{"", BIG_PIC_PATH, SMALL_PIC_PATH, FILE_PATH}

type baseController struct {
	beego.Controller
	i18n.Locale
	options  map[string]string
	right    string
	page     int
	pagesize int
}

func (this *baseController) Prepare() {
	this.options = GetOptions()
	this.right = "right.html"
	this.Data["options"] = this.options
	this.Data["latestblog"] = GetLatestBlog()
	this.Data["hotblog"] = GetHotBlog()
	this.Data["links"] = GetLinks()
	var (
		pagesize int
		err      error
		page     int
	)

	if page, err = strconv.Atoi(this.Ctx.Input.Param(":page")); err != nil || page < 1 {
		page = 1
	}

	if pagesize, err = strconv.Atoi(this.getOption("pagesize")); err != nil || pagesize < 1 {
		pagesize = 10
	}
	this.page = page
	this.pagesize = pagesize
}

func (this *baseController) display(tpl string) {
	theme := "default"
	if v, ok := this.options["theme"]; ok && v != "" {
		theme = v
	}

	homepath := beego.AppConfig.String("home_template")
	temp := strings.Split(homepath, "/")
	layout := temp[0] + "/" + theme
	this.Layout = layout + "/layout.html"

	this.LayoutSections = make(map[string]string)
	this.LayoutSections["head"] = theme + "/head.html"

	if tpl == "index" {
		this.LayoutSections["banner"] = layout + "/banner.html"
		this.LayoutSections["middle"] = layout + "/middle.html"
	}
	if this.right != "" {
		this.LayoutSections["right"] = layout + "/" + this.right
	}
	this.LayoutSections["foot"] = layout + "/foot.html"

	this.TplName = layout + "/" + tpl + ".html"

}

func (this *baseController) getOption(name string) string {
	if v, ok := this.options[name]; ok {
		return v
	} else {
		return ""
	}
}

func (this *baseController) setHeadMetas(params ...string) {
	title_buf := make([]string, 0, 3)
	if len(params) == 0 && this.getOption("subtitle") != "" {
		title_buf = append(title_buf, this.getOption("subtitle"))
	}
	if len(params) > 0 {
		title_buf = append(title_buf, params[0])
	}
	title_buf = append(title_buf, this.getOption("sitename"))
	this.Data["title"] = strings.Join(title_buf, " - ")

	if len(params) > 1 {
		this.Data["keywords"] = params[1]
	} else {
		this.Data["keywords"] = this.getOption("keywords")
	}

	if len(params) > 2 {
		this.Data["description"] = params[2]
	} else {
		this.Data["description"] = this.getOption("description")
	}
}
