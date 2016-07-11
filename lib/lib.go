package lib

import (
	"crypto/md5"
	"encoding/base64"
	"encoding/hex"
	"fmt"
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/context"
	"io"
	"io/ioutil"
	"net/url"
	"os"
	"strconv"
	"strings"
	"time"
)

//加密
func UrlE(urlstring string) string {
	str := []byte(urlstring)
	data := base64.StdEncoding.EncodeToString(str)
	return data
}

func UrlD(urlxxstring string) string {
	data, err := base64.StdEncoding.DecodeString(urlxxstring)
	if err != nil {
		return ""
	}
	s := fmt.Sprintf("%q", data)
	return s
}

//解密
func GetTime() time.Time {
	timezone := float64(0)
	v := beego.AppConfig.String("timezone")
	timezone, _ = strconv.ParseFloat(v, 64)
	add := timezone * float64(time.Hour)
	return time.Now().UTC().Add(time.Duration(add))
}

/*"2006-01-02 15:04:05"*/
func GetTodayString() string {
	timezone := float64(0)
	v := beego.AppConfig.String("timezone")
	timezone, _ = strconv.ParseFloat(v, 64)
	add := timezone * float64(time.Hour)
	return time.Now().UTC().Add(time.Duration(add)).Format("20060102")
}

//
func GetTimeString() string {
	timezone := float64(0)
	v := beego.AppConfig.String("timezone")
	timezone, _ = strconv.ParseFloat(v, 64)
	add := timezone * float64(time.Hour)
	return time.Now().UTC().Add(time.Duration(add)).Format("20060102150405")
}

//编辑器根目录
func GetEditorBaseDir() string {
	return beego.AppConfig.String("ediorfilepath")
}

//创建编辑器文件夹
func MakeEditorDir(s string) (filedir string, err error) {
	filedir = GetEditorBaseDir() + "/" + s
	err = os.MkdirAll(filedir, 0777)
	return filedir, err
}

//判断文件是否存在
func HasFile(s string) bool {
	f, err := os.Open(s)
	if err != nil && os.IsNotExist(err) {
		return false
	}
	f.Close()
	return true
}

//复制文件
func CopyFF(src io.Reader, dst io.Writer) error {
	_, err := io.Copy(dst, src)
	return err
}

//复制文件
func CopyFS(src io.Reader, dst string) error {
	f, err := os.OpenFile(dst, os.O_WRONLY|os.O_CREATE|os.O_TRUNC, 0666)
	if err != nil {
		return err
	}
	defer f.Close()
	_, err = io.Copy(f, src)
	return err
}

//文件夹下数量
func SizeofDir(dirPth string) int {
	fielinfo, _ := os.Stat(dirPth)
	if fielinfo.IsDir() {
		files, _ := ioutil.ReadDir(dirPth)
		return len(files)
	}
	return 0
}

//create md5 string
func Strtomd5(s string) string {
	h := md5.New()
	h.Write([]byte(s))
	rs := hex.EncodeToString(h.Sum(nil))
	return rs
}

//password hash function
func Pwdhash(str string) string {
	return Strtomd5(str)
}

func Md5(str string) string {
	return Strtomd5(str)
}

func StringsToJson(str string) string {
	rs := []rune(str)
	jsons := ""
	for _, r := range rs {
		rint := int(r)
		if rint < 128 {
			jsons += string(r)
		} else {
			jsons += "\\u" + strconv.FormatInt(int64(rint), 16) // json
		}
	}

	return jsons
}

func Rawurlencode(str string) string {
	return strings.Replace(url.QueryEscape(str), "+", "%20", -1)
}

//获取用户IP地址
func GetClientIp(this *context.Context) string {
	s := strings.Split(this.Request.RemoteAddr, ":")
	return s[0]
}
