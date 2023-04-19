FROM golang:1.19

WORKDIR /usr/src

COPY . .

RUN go mod init fullcycle

CMD ["go", "run", "."]