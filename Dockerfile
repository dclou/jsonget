FROM alpine:3.6
RUN apk --no-cache add git go libc-dev && \
  go get github.com/eientei/jsonget && \
  go build -o /jsonget github.com/dclou/jsonget && \
  rm -rf go && \
  apk --no-cache del git go libc-dev
CMD /jsonget -gitlab $JSONGET_GITLAB -token $JSONGET_TOKEN $JSONGET_OPTS
