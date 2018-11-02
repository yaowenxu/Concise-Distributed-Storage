package main

import (
	"log"
	// "Distributed-Storage/rabbitmq"
	"Distributed-Storage/dataContainer/heartbeat"
	"Distributed-Storage/dataContainer/locate"
	"net/http"
	"Distributed-Storage/dataContainer/objects"
	"os"
)

// dataContainer 入口函数
// 主函数
func main() {
	go heartbeat.StartHeartbeat()
	go locate.StartLocate()
	http.HandleFunc("/objects/", objects.Handler)
	log.Fatal(http.ListenAndServe(os.Getenv("LISTEN_ADDRESS"), nil))
}

