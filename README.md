# Concise-Distributed-Storage
A simple distributed storage model

#### 介绍：
本项目是学习胡世杰老师的分布式对象存储课程的训练项目，如果您有疑问，可以在issues 里给我留言。非常欢迎您与我交流，也感谢胡世杰老师的指导。

#### 使用说明：
测试环境： go 1.10.4 ; Fedora 28; RabbitMQ 3.6.16
- 包安装: go get "github.com/streadway/amqp" 
- 创建 apiServers 和 dataServers 两个exchange, type: fanout
- 创建超级用户 yaoxu yaoxu , 拥有最高权限
- 使用 go get 命令把此项目拉取到go工作空间中

请依次运行tools 中脚本: 
- ip.sh : 配置虚拟IP 方便测试 
- initenv.sh : /tmp 文件中, 创建存储文件 
- startenv.sh : 批量开启服务器 
- 使用 ps aux | grep go 查看运状态

关闭：
- stop.sh : 关掉所有的服务进器程 

#### 实现功能：
- REST 接口
- 可扩展性、分布式 
- 使用消息队列进行解耦

#### 目录概览：

```
.
├── LICENSE
├── README.md
├── apiContainer
│   ├── apiContainer.go
│   ├── heartbeat
│   │   ├── choose.go
│   │   └── heartbeat.go
│   ├── locate
│   │   ├── handler.go
│   │   └── locate.go
│   └── objects
│       ├── get.go
│       ├── get_stream.go
│       ├── handler.go
│       ├── put.go
│       ├── put_stream.go
│       └── store.go
├── dataContainer
│   ├── dataContainer.go
│   ├── heartbeat
│   │   └── heartbeat.go
│   ├── locate
│   │   └── locate.go
│   └── objects
│       ├── get.go
│       ├── handler.go
│       └── put.go
├── objectstream
│   ├── get.go
│   ├── objectstream.go
│   └── put.go
├── rabbitmq
│   └── rabbitmq.go
└── tools
    ├── initenv.sh
    ├── ip.sh
    ├── startenv.sh
    ├── stop.sh
    └── tree

11 directories, 28 files

```

---
保持更新，转载请注明出处。 http://www.cnblogs.com/xuyaowen

