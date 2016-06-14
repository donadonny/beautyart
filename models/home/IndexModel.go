package home

import (
	"fmt"
	"github.com/astaxie/beego/orm"
	_ "github.com/go-sql-driver/mysql"
	. "github.com/hunterhug/beautyart/lib"
)

// 获取网站数据字典
func GetOptions() map[string]string {
	if !Cache.IsExist("options") {
		var result []*Option
		o := orm.NewOrm()
		o.QueryTable(&Option{}).All(&result)
		options := make(map[string]string)
		for _, v := range result {
			options[v.Name] = v.Value
		}
		Cache.Put("options", options)
	}
	v := Cache.Get("options")
	return v.(map[string]string)
}

//
func GetLatestBlog() []*Post {
	if !Cache.IsExist("latestblog") {
		var result []*Post
		query := new(Post).Query().Filter("status", 0).Filter("urltype", 0)
		count, _ := query.Count()
		if count > 0 {
			query.OrderBy("-posttime").Limit(8).All(&result)
		}
		Cache.Put("latestblog", result)
	}
	v := Cache.Get("latestblog")
	return v.([]*Post)
}

func GetHotBlog() []*Post {
	if !Cache.IsExist("hotblog") {
		var result []*Post
		new(Post).Query().Filter("status", 0).Filter("urltype", 0).OrderBy("-views").Limit(5).All(&result)
		Cache.Put("hotblog", result)
	}
	v := Cache.Get("hotblog")
	return v.([]*Post)
}

func GetLinks() []*Link {
	if !Cache.IsExist("links") {
		var result []*Link
		new(Link).Query().OrderBy("-rank").All(&result)
		Cache.Put("links", result)
		fmt.Println(result)
	}
	v := Cache.Get("links")
	return v.([]*Link)
}
