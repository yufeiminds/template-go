FROM alpine:3.17
COPY template-go /usr/local/bin/template-go
ENTRYPOINT ["/usr/local/bin/template-go"]

