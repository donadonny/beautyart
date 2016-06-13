// 模型包
package models

import (
	"github.com/astaxie/beego"
	. "github.com/hunterhug/beautyart/lib"
	"mime"
	"os"
)

var VERSION = beego.AppConfig.String("version")

func init() {
	beego.Trace("添加json格式化函数映射")
	beego.AddFuncMap("stringsToJson", StringsToJson)
	mime.AddExtensionType(".css", "text/css")
}

// 数据库初始化
func initArgs() {
	args := os.Args
	for _, v := range args {
		if v == "-s" {
			Syncdb()
			os.Exit(0)
		}
	}
}

// 数据库开跑
func Run() {
	beego.Trace("数据库开跑")
	initArgs()
	Connect()
}
