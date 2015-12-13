package main

import "fmt"
import "log"
import "bufio"
import "os"
import "strings"

func main() {
    file, err := os.Open(os.Args[1])
    if err != nil {
        log.Fatal(err)
    }
    defer file.Close()
    scanner := bufio.NewScanner(file)
    for scanner.Scan() {
        split_line := strings.Split(scanner.Text(), " ")
        first_word := true
        for i := len(split_line)-1; i >=0; i-- {
          if first_word == true {
            first_word = false
          } else {
            fmt.Print(" ")
          }
          fmt.Print(split_line[i])
        }
        fmt.Print("\n")
    }
}
