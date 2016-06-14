// 路由包
package routers

import (
	"github.com/astaxie/beego"
)

func init() {
	router()
}

// 路由
func router() {
	beego.Trace("路由开始")
	rbacrouter()
	adminrouter()
	homerouter()
}
