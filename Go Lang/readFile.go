package main

import (
	"fmt"
	"io/ioutil"
)

func main() {

	fileName := "./hello.txt"	

}

func checkError(err error) {
	if err != nil {
		panic(err)
	}
}