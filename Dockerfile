FROM alpine:3.6
RUN apk --no-cache add git openssh go && \
  git clone https://github.com/eientei/jsonget && \
  cd jsonget && \
  go build && \
  mv jsonget /jsonget && \
  cd ../ && \
  rm -fr jsonget && \
  apk --no-cache del git openssh go
CMD /jsonget -gitlab $JSONGET_GITLAB -token $JSONGET_TOKEN $JSONGET_OPTS
