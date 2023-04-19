FROM golang:alpine AS builder

WORKDIR /usr/src

COPY . .

RUN go build -ldflags '-s -w' main.go

FROM scratch

WORKDIR /

COPY --from=builder /usr/src /

CMD ["./main"]