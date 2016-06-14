package home

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	. "github.com/hunterhug/beautyart/lib"
)

//配置项表，数据字典
type Option struct {
	Id    int64
	Name  string `orm:"unique"`
	Value string
}

func init() {
	orm.RegisterModelWithPrefix(beego.AppConfig.String("db_prefix"), new(Option))
}

func (m *Option) Insert() error {
	if _, err := orm.NewOrm().Insert(m); err != nil {
		return err
	}
	Cache.Delete("options")
	return nil
}

func (m *Option) Read(fields ...string) error {
	if err := orm.NewOrm().Read(m, fields...); err != nil {
		return err
	}
	return nil
}

func (m *Option) Update(fields ...string) error {
	if _, err := orm.NewOrm().Update(m, fields...); err != nil {
		return err
	}
	Cache.Delete("options")
	return nil
}

func (m *Option) Delete() error {
	if _, err := orm.NewOrm().Delete(m); err != nil {
		return err
	}
	Cache.Delete("options")
	return nil
}

func (m *Option) Query() orm.QuerySeter {
	return orm.NewOrm().QueryTable(m)
}
