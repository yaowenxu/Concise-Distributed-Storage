package objects

import (
	"net/http"
	"os"
	"strings"
	"log"
	"io"
)

func get(w http.ResponseWriter, r *http.Request) {
	//log.Printf("xuyaowen: get")
	f, e := os.Open(os.Getenv("STORAGE_ROOT") + "/objects/" +
		strings.Split(r.URL.EscapedPath(), "/")[2])
	if e != nil {
		log.Println(e)
		w.WriteHeader(http.StatusNotFound)
		return
	}
	defer f.Close()
	io.Copy(w, f)
}