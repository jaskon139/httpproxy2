FROM golang
RUN go get github.com/bountylabs/http_proxy

EXPOSE 80

ENTRYPOINT ["/go/bin/http_proxy"]
