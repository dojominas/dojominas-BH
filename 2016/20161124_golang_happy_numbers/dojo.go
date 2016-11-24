package main

import (
	"strconv"
	"strings"
)

func IntInSlice(a int, list []int) bool {
	for _, b := range list {
		if b == a {
			return true
		}
	}
	return false
}

func HappyNumber(numero int, lista []int) bool {
	if numero == 1 {
		return true
	} else if IntInSlice(numero, lista) {
		return false
	} else {
		quadrado := string(numero * numero)
		chars := strings.Split(quadrado, "")

		acc := 0

		for i := 0; i < len(chars); i++ {
			n, _ := strconv.Atoi(chars[i])
			acc += n * n
		}

		HappyNumber(acc, append(lista, acc))
	}

	return false
}
