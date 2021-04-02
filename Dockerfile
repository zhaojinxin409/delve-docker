FROM golang:1.13.5-alpine3.10

RUN apk add --no-cache g++

RUN go env -w GO111MODULE=on
RUN go env -w GOPROXY=https://goproxy.cn,direct

RUN go get github.com/go-delve/delve/cmd/dlv

EXPOSE 2345