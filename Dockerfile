FROM golang:alpine3.14

ARG DOCKER_HUGO_VERSION="0.92.2"
ENV DOCKER_HUGO_NAME="hugo_${DOCKER_HUGO_VERSION}_Linux-64bit"
ENV DOCKER_HUGO_BASE_URL="https://github.com/gohugoio/hugo/releases/download"
ENV DOCKER_HUGO_URL="${DOCKER_HUGO_BASE_URL}/v${DOCKER_HUGO_VERSION}/${DOCKER_HUGO_NAME}.tar.gz"
ARG INSTALL_NODE="false"

WORKDIR /build
RUN apk update && \
    apk --update add git && \
    wget --quiet "${DOCKER_HUGO_URL}" && \
    tar -zxvf "${DOCKER_HUGO_NAME}.tar.gz" && \
    mv ./hugo /usr/bin/hugo && \
    go get github.com/Ladicle/tcardgen && \
    rm -rf /build
    
WORKDIR /src
CMD ["/usr/bin/hugo"]