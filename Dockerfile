# 官方的 Golang 镜像基于 Debian，且 workspace（GOPATH）配置为 /go
FROM golang:1.10.2

# 将本地的 Go 文件复制到容器中的 workspace
ADD . /go/src/gogs.kikakika.com/lihongfeng/first

# 在容器内编译构建应用。可以在这里获取或管理依赖关系，可以手动或使用诸如“godep”之类的工具
RUN go install gogs.kikakika.com/lihongfeng/first

# 容器启动时，默认运行 first 应用
ENTRYPOINT /go/bin/first

# 监听 8080 端口
EXPOSE 8080
