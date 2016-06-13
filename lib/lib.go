package lib

import (
	"crypto/md5"
	"encoding/hex"
	"github.com/astaxie/beego/context"
	"github.com/hunterhug/models/home"
	"strconv"
	"time"
)

func getTime() time.Time {
	options := home.GetOptions()
	timezone := float64(0)
	if v, ok := options["timezone"]; ok {
		timezone, _ = strconv.ParseFloat(v, 64)
	}
	add := timezone * float64(time.Hour)
	return time.Now().UTC().Add(time.Duration(add))
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

//获取用户IP地址
func getClientIp(this *context.Context) string {
	s := strings.Split(this.Request.RemoteAddr, ":")
	return s[0]
}

//返回带前缀的表名
func TableName(str string) string {
	return fmt.Sprintf("%s%s", beego.AppConfig.String("db_prefix"), str)
}
