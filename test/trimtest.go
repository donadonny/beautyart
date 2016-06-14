package main

import (
	"fmt"
	"strings"
)

func main() {
	s := ",dsaw,dc,ds,c,ds"
	cutset := ",d"
	ss := strings.Trim(s, cutset)
	fmt.Println(ss)
}
