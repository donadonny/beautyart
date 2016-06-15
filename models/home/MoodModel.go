package home

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	"time"
)

//心情表
type Mood struct {
	Id       int64
	Content  string    `orm:"type(text)"`
	Cover    string    `orm:"size(70)";default:"/static/upload/defaultcover.png'"`
	Posttime time.Time `orm:"type(datetime);index"`
}

func init() {
	orm.RegisterModelWithPrefix(beego.AppConfig.String("db_prefix"), new(Mood))
}

func (m *Mood) Insert() error {
	if _, err := orm.NewOrm().Insert(m); err != nil {
		return err
	}
	return nil
}

func (m *Mood) Read(fields ...string) error {
	if err := orm.NewOrm().Read(m, fields...); err != nil {
		return err
	}
	return nil
}

func (m *Mood) Update(fields ...string) error {
	if _, err := orm.NewOrm().Update(m, fields...); err != nil {
		return err
	}
	return nil
}

func (m *Mood) Delete() error {
	if _, err := orm.NewOrm().Delete(m); err != nil {
		return err
	}
	return nil
}

func (m *Mood) Query() orm.QuerySeter {
	return orm.NewOrm().QueryTable(m)
}
