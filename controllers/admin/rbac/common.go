package rbac

import (
	"github.com/astaxie/beego"
	m "github.com/hunterhug/beautyart/models/admin"
)

type CommonController struct {
	baseController
	Templatetype string //ui template type
}

// 请求状态响应
func (this *CommonController) Rsp(status bool, str string) {
	this.Data["json"] = &map[string]interface{}{"status": status, "info": str}
	this.ServeJSON()
}

// 获取模板位置
func (this *CommonController) GetTemplatetype() string {
	templatetype := beego.AppConfig.String("template_type")
	if templatetype == "" {
		templatetype = "easyui"
	}
	return templatetype
}

func (this *CommonController) GetTree() []Tree {
	nodes, _ := m.GetNodeTree(0, 1)
	tree := make([]Tree, len(nodes))
	for k, v := range nodes {
		tree[k].Id = v["Id"].(int64)
		tree[k].Text = v["Title"].(string)
		children, _ := m.GetNodeTree(v["Id"].(int64), 2)
		tree[k].Children = make([]Tree, len(children))
		for k1, v1 := range children {
			tree[k].Children[k1].Id = v1["Id"].(int64)
			tree[k].Children[k1].Text = v1["Title"].(string)
			tree[k].Children[k1].Attributes.Url = "/" + v["Name"].(string) + "/" + v1["Name"].(string)
		}
	}
	return tree
}
