package main

import (
	_ "blog/models"
	_ "blog/routers"
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
)

func main() {
	orm.RunSyncdb("default", false, true)
	beego.Run()
}
