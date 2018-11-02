package main

import (
	"log"
	"net/http"
	"os"
	"Distributed-Storage/apiContainer/locate"
	"Distributed-Storage/apiContainer/objects"
	"Distributed-Storage/apiContainer/heartbeat"
)

// apiContainer 入口函数
func main() {
	go heartbeat.ListenHeartbeat()
	http.HandleFunc("/objects/", objects.Handler)
	http.HandleFunc("/locate/", locate.Handler)
	log.Fatal(http.ListenAndServe(os.Getenv("LISTEN_ADDRESS"), nil))
}
