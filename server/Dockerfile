FROM golang:1.17.6-alpine3.15

RUN mkdir /app
ADD . /app
WORKDIR /app

RUN go mod download
RUN go get github.com/rabbitmq/amqp091-go
RUN go build -o main .
CMD ["/app/main"]