FROM golang:latest

WORKDIR /go/src/go_grpc_server
COPY . .

RUN go get google.golang.org/grpc
RUN go get github.com/go-sql-driver/mysql
RUN go install go_grpc_server

ENTRYPOINT /go/bin/go_grpc_server

EXPOSE 9000
