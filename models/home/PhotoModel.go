package home

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	"time"
)

//相册表
type Photo struct {
	Id       int64
	Albumid  int64
	Des      string    `orm:"size(100)"`
	Posttime time.Time `orm:"type(datetime);index"`
	Url      string    `orm:"size(70)"`
	Small    string    `orm:"-"`
}

func init() {
	orm.RegisterModelWithPrefix(beego.AppConfig.String("db_prefix"), new(Photo))
}

func (m *Photo) Insert() error {
	if _, err := orm.NewOrm().Insert(m); err != nil {
		return err
	}
	return nil
}

func (m *Photo) Read(fields ...string) error {
	if err := orm.NewOrm().Read(m, fields...); err != nil {
		return err
	}
	return nil
}

func (m *Photo) Update(fields ...string) error {
	if _, err := orm.NewOrm().Update(m, fields...); err != nil {
		return err
	}
	return nil
}

func (m *Photo) Delete() error {
	if _, err := orm.NewOrm().Delete(m); err != nil {
		return err
	}
	return nil
}

func (m *Photo) Query() orm.QuerySeter {
	return orm.NewOrm().QueryTable(m)
}
