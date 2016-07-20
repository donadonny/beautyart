package main

import (
	"encoding/json"
	"errors"
	"fmt"
	"io/ioutil"
	"os"
	"path"
	"regexp"
	"runtime"
	"strings"
	"sync"
)

var _level = -1
var once sync.Once

//根目录
var RootDir string

func init() {
	RootDir = path.Join(CurDir(), "../")
}

//文件所在全路径
func Filepath(doc string, filename string) string {
	return path.Join(RootDir, doc, filename)
}

// 获取调用者的当前文件名
func CurFile() string {
	return curFile(1)
}

// 获取调用者的当前文件DIR
func CurDir() string {
	return path.Dir(curFile(1))
}

func curFile(addLevel int) string {
	once.Do(func() {
		var filename string
		for i := 0; i < 20; i++ {
			_, filename, _, _ = runtime.Caller(i)
			if strings.HasSuffix(filename, "beautyart/test/test.go") {
				_level = i + 1
				break
			}
		}

	})
	_, filename, _, _ := runtime.Caller(_level + addLevel)
	return filename
}

//------------------------------
const extendTag = "@extend:"

func ExtendFile(filePath string) (string, error) {
	fi, err := os.Stat(filePath)
	if err != nil {
		return "", err
	} else if fi.IsDir() {
		return "", errors.New(filePath + " is not a file.")
	}
	var b []byte
	b, err = ioutil.ReadFile(filePath)
	if err != nil {
		return "", err
	}

	return ExtendFileContent(path.Dir(filePath), b)
}

func ExtendFileContent(dir string, content []byte) (string, error) {
	//检查是不是规范的json
	test := new(interface{})
	err := json.Unmarshal(content, &test)
	if err != nil {
		return "", err
	}

	//替换子json文件
	reg := regexp.MustCompile(`"` + extendTag + `.*?"`)
	ret := reg.ReplaceAllStringFunc(string(content), func(match string) string {
		match = match[len(extendTag)+1 : len(match)-1]
		var p = match
		if !strings.HasPrefix(match, "/") {
			p = dir + "/" + match
		}
		sb, err2 := ExtendFile(p)
		if err2 != nil {
			err = fmt.Errorf("替换json配置[%s]失败：%s\n", match, err2.Error())
		}
		return string(sb)
	})
	return ret, err
}

//根据字符串加载json
func LoadStringJsonFile(content string, conf interface{}) error {
	b := []byte(content)
	err := json.Unmarshal(b, conf)
	if err != nil {
		return err
	}
	return err
}

//加载json配置文件
func LoadJsonFile(filePath string, conf interface{}) error {
	fi, err := os.Stat(filePath)
	if err != nil {
		return err
	} else if fi.IsDir() {
		return errors.New(filePath + " is not a file.")
	}

	var b []byte
	b, err = ioutil.ReadFile(filePath)
	if err != nil {
		return err
	}
	err = json.Unmarshal(b, conf)
	if err != nil {
		return err
	}
	return err
}

type Config struct {
	A string
	B string
	AConfig
	E int64
}

type AConfig struct {
	F []string
	G map[string]string
}

func main() {
	dir := CurDir()
	file := CurFile()
	fmt.Println(dir)
	fmt.Println(file)
	fmt.Println(RootDir)

	filen := Filepath("conf/files", "test.json")
	fmt.Println(filen)

	confs := &Config{}
	// e1 := LoadJsonFile(filen, confs)
	// if e1 != nil {
	// 	fmt.Println(e1.Error())
	// }
	// fmt.Printf("%v", confs)

	s, e := ExtendFile(filen)
	if e != nil {
		fmt.Println(e.Error())
	} else {
		LoadStringJsonFile(s, confs)
	}
	fmt.Printf("%v", confs)
}
