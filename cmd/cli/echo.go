package main

import (
	"os"

	"github.com/yufeiminds/template-go/internal/echo"
)

func main() {
	name := "world"
	if len(os.Args) > 1 {
		name = os.Args[1]
	}
	echo.Echo(name)
}
