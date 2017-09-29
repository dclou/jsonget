FROM alpine:3.6
RUN \
  export http_proxy=http://s-proxy-04-g.global.bcs:8080; \
  export ALL_PROXY=http://s-proxy-04-g.global.bcs:8080; \
  export https_proxy=http://s-proxy-04-g.global.bcs:8080; \
  export HTTP_PROXY=http://s-proxy-04-g.global.bcs:8080; \
  apk --no-cache add git go libc-dev && \
  go get github.com/dclou/jsonget && \
  go build -o /jsonget github.com/dclou/jsonget && \
  rm -rf go && \
  apk --no-cache del git go libc-dev
CMD /jsonget -gitlab $JSONGET_GITLAB -token $JSONGET_TOKEN $JSONGET_OPTS
