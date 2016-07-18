package blog

import (
	"github.com/astaxie/beego/orm"
	"time"
)

type Paper struct {
	Id         int64
	Title      string    `orm:"size(100)"`
	Content    string    `orm:"type(text)";null`
	Descontent string    `orm:"type(text);null"`
	Createtime time.Time `orm:"type(datetime);null"`
	Updatetime time.Time `orm:"type(datetime);null"`
	Sort       int64
	Status     int64 `orm:"default(2)"`
	Username   string
	Photo      string
	View       int64
	Cid        int64
	Isroll	int64 `orm:"default(0)"`
	Ishot int64 `orm:"default(0)"`
}

func init() {
	orm.RegisterModel(new(Paper))
}

func (m *Paper) Read(fields ...string) error {
	if err := orm.NewOrm().Read(m, fields...); err != nil {
		return err
	}
	return nil
}

func (m *Paper) Update(fields ...string) error {
	if _, err := orm.NewOrm().Update(m, fields...); err != nil {
		return err
	}
	return nil
}

func (m *Paper) Delete() error {
	if _, err := orm.NewOrm().Delete(m); err != nil {
		return err
	}
	return nil
}

func (m *Paper) Query() orm.QuerySeter {
	return orm.NewOrm().QueryTable(m)
}

func (m *Paper) Insert() error {
	if _, err := orm.NewOrm().Insert(m); err != nil {
		return err
	}
	return nil
}
