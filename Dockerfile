FROM golang as builder

WORKDIR $GOPATH/src

COPY ./src/ .

RUN go build -o ../bin

CMD ["../bin/hello"]

