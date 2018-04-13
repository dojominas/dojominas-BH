package main

import "fmt"

func Corredor(n int)[]bool{
  var resultado []bool
  for i := 0; i < n; i++{
    resultado = append(resultado, false)
  }
  for i := 0; i < n; i++{
    for j := 1; j <= n; j++{
      if (i + 1) % j   == 0{
        resultado[i] = !resultado[i]
      }
    }
  }
  return resultado
}

func main() {
    fmt.Printf("hello, world\n")
}
