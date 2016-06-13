// 路由包
package routers

import (
	"github.com/astaxie/beego"
	"github.com/hunterhug/beautyart/models"
)

func init() {
	run()
	router()
}

// 模型初始化
func run() {
	beego.Trace("模型初始化")
	models.Run()
}

// 路由
func router() {
	beego.Trace("路由开始")
	adminrouter()
	homerouter()
}
