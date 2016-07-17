package routers

import (
	"github.com/astaxie/beego"
	"github.com/hunterhug/beautyart/controllers/admin/blog"
)

func blogrouter() {

	//文章管理
	beego.Router("/blog/category/index", &blog.CategoryController{}, "*:Index")
	beego.Router("/blog/category/addcategory", &blog.CategoryController{}, "*:AddCategory")
	beego.Router("/blog/category/updatecategory", &blog.CategoryController{}, "*:UpdateCategory")
	beego.Router("/blog/category/deletecategory", &blog.CategoryController{}, "*:DeleteCategory")

	beego.Router("/public/file/upload", &blog.UploadController{}, "*:UploadFile")
	beego.Router("/public/file/filemanage", &blog.UploadController{}, "*:FileManage")

	beego.Router("/public/file/getfile", &blog.UploadController{}, "*:GetWebFile")
	//FileManage

	//相册管理
	beego.Router("/picture/album/index", &blog.AlbumController{}, "*:Index")
	beego.Router("/picture/album/addalbum", &blog.AlbumController{}, "*:AddCategory")
	beego.Router("/picture/album/updatealbum", &blog.AlbumController{}, "*:UpdateCategory")
	beego.Router("/picture/album/deletealbum", &blog.AlbumController{}, "*:DeleteCategory")
}
