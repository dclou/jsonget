FROM alpine:3.6

CMD /jsonget -gitlab $JSONGET_GITLAB -token $JSONGET_TOKEN $JSONGET_OPTS
