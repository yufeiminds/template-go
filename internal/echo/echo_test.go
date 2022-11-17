package echo_test

import (
	"testing"

	"github.com/yufeiminds/template-go/internal/echo"
)

func TestEcho(t *testing.T) {
	echo.Echo("name")
}
