package blog

import (
	"errors"
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	"time"
)

type Category struct {
	Id         int64
	Title      string    `orm:"size(100)"`
	Content    string    `orm:"type(text)"`
	Createtime time.Time `orm:"type(datetime)"`
	Updatetime time.Time `orm:"type(datetime)"`
	Sort       int
	Status     int `orm:"default(2)"`
	Username   string
	Pid        int
}

func init() {
	orm.RegisterModel(new(Category))
}

func (m *Category) Read(fields ...string) error {
	if err := orm.NewOrm().Read(m, fields...); err != nil {
		return err
	}
	return nil
}

func (m *Category) Update(fields ...string) error {
	if _, err := orm.NewOrm().Update(m, fields...); err != nil {
		return err
	}
	return nil
}

func (m *Category) Delete() error {
	if _, err := orm.NewOrm().Delete(m); err != nil {
		return err
	}
	return nil
}

func (m *Category) Query() orm.QuerySeter {
	return orm.NewOrm().QueryTable(m)
}
