FROM golang as builder

WORKDIR $GOPATH/src

COPY ./src/ .

RUN go build -o ../bin


FROM scratch

COPY --from=builder /go/bin/* /

CMD ["/hello"]

