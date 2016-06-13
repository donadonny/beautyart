// 应用主函数包
package main

import (
	// 加载路由，不可省略
	"github.com/astaxie/beego"
	"github.com/beego/i18n"
	_ "github.com/hunterhug/beautyart/routers"
	"strings"
)

// 国际化语言数组
var langTypes []string

// 加载、初始化国际化
func init() {
	langTypes = strings.Split(beego.AppConfig.String("lang_types"), "|")

	for _, lang := range langTypes {
		beego.Trace("加载语言: " + lang)
		if err := i18n.SetMessage(lang, "conf/"+"locale_"+lang+".ini"); err != nil {
			beego.Error("加载语言文件失败:", err)
			return
		}
	}

	// 添加映射
	beego.Trace("添加i18n函数映射")
	beego.AddFuncMap("i18n", i18n.Tr)
}

func main() {
	beego.Run()
}
