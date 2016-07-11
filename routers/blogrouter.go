package routers

import (
	"github.com/astaxie/beego"
	"github.com/hunterhug/beautyart/controllers/admin/blog"
)

func blogrouter() {

	//内容管理
	beego.Router("/blog/category/index", &blog.CategoryController{}, "*:Index")
	beego.Router("/blog/category/addcategory", &blog.CategoryController{}, "*:AddCategory")
	beego.Router("/blog/category/updatecategory", &blog.CategoryController{}, "*:UpdateCategory")
	beego.Router("/blog/category/deletecategory", &blog.CategoryController{}, "*:DeleteCategory")

	beego.Router("/blog/file/upload", &blog.UploadController{}, "*:UploadFile")
	beego.Router("/blog/file/filemanage", &blog.UploadController{}, "*:FileManage")
	beego.Router("/public/file", &blog.UploadController{}, "*:GetWebFile")
	//FileManage
}
