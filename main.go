package main

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	_ "github.com/hunterhug/beautyart/models"
	_ "github.com/hunterhug/beautyart/routers"
)

func main() {
	orm.RunSyncdb("default", false, true)
	beego.Run()
}
