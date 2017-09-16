FROM alpine:3.6
RUN apk --no-cache add git openssh go && git clone  
CMD /jsonget -gitlab $JSONGET_GITLAB -token $JSONGET_TOKEN $JSONGET_OPTS
