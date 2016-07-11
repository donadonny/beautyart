package blog

import (
	"fmt"
	_ "github.com/astaxie/beego"
	. "github.com/hunterhug/beautyart/lib"
	"io/ioutil"
	"strings"
)

type UploadController struct {
	baseController
}

func (this *UploadController) UploadFile() {
	/*
		//定义允许上传的文件扩展名
		$ext_arr = array(
			'image' => array('gif', 'jpg', 'jpeg', 'png', 'bmp'),
			'flash' => array('swf', 'flv'),
			'media' => array('swf', 'flv', 'mp3', 'wav', 'wma', 'wmv', 'mid', 'avi', 'mpg', 'asf', 'rm', 'rmvb'),
			'file' => array('doc', 'docx', 'xls', 'xlsx', 'ppt', 'htm', 'html', 'txt', 'zip', 'rar', 'gz', 'bz2'),
		);
		//最大文件大小
		$max_size = 1000000;


	*/
	//初始化
	fileerror := 1
	dirpath := ""
	filename := ""
	filetype := this.GetString("dir", "file")

	message := "什么都没发生"

	//得到表单数据
	f, h, err := this.GetFile("imgFile")

	defer f.Close()
	if err != nil {
		message = err.Error()
	} else {
		//创建文件夹
		dirpath, err = MakeEditorDir(filetype + "/" + GetTodayString())
		if err != nil {
			message = err.Error()
		} else {
			//新建文件名
			filename = h.Filename
			if HasFile(dirpath + "/" + filename) {
				//文件名存在，放大招，改名
				filename = GetTimeString() + h.Filename
			}
			//复制文件
			err = CopyFS(f, dirpath+"/"+filename)
			if err != nil {
				message = err.Error()
			} else {
				fileerror = 0
			}
		}
	}

	if fileerror == 1 {
		this.Data["json"] = &map[string]interface{}{"error": fileerror, "message": message}
	} else {
		urlstring := "/public/file?token=" + UrlE(dirpath+"/"+filename)
		fmt.Println(dirpath + "/" + filename)
		this.Data["json"] = &map[string]interface{}{"error": fileerror, "url": urlstring}
	}
	this.ServeJSON()
}

func (this *UploadController) GetWebFile() {
	id := this.GetString("token", "")
	id = strings.Replace(UrlD(id), "\"", "", -1)
	fmt.Println(id)
	if id == "" {
		this.StopRun()
	}
	if strings.HasPrefix(id, GetEditorBaseDir()) {
		data, e := ioutil.ReadFile(id)
		if e != nil {
			this.StopRun()
		}
		this.Ctx.ResponseWriter.WriteHeader(200)
		this.Ctx.ResponseWriter.Write(data)
	} else {
		this.StopRun()
	}

}

func (this *UploadController) FileManage() {

}
