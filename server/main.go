// main.go
package main
 
import (
    "net/http"
)
 
func main() {
    http.HandleFunc("/", func(w http.ResponseWriter, rq *http.Request) {
        w.Write([]byte("Hello world!"))
    })
    http.ListenAndServe(":3000", nil)
}	