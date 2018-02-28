FROM golang:1.9-alpine

ENV APP_PATH=github.com/mat285/gotcp
ENV APP_ROOT=${GOPATH}/src/${APP_PATH}

ADD main.go ${APP_ROOT}/main.go

RUN go install ${APP_PATH}

EXPOSE 3333

ENTRYPOINT [ "/go/bin/gotcp" ]
