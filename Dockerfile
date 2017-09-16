FROM alpine:3.6
RUN apk --no-cache add go && \
  go get github.com/eientei/jsonget && \
  go build -o /jsonget github.com/eientei/jsonget && \
  rm -rf go && \
  apk --no-cache del go
CMD /jsonget -gitlab $JSONGET_GITLAB -token $JSONGET_TOKEN $JSONGET_OPTS
