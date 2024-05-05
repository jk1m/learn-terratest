ARG BASE_VER=1.22.2-alpine3.19
FROM golang:${BASE_VER}

ARG TOFU_VER=1.6.2

RUN apk upgrade --no-cache && \
  apk add vim git curl && \
  curl -sLo /tmp/tofu.zip https://github.com/opentofu/opentofu/releases/download/v${TOFU_VER}/tofu_${TOFU_VER}_linux_amd64.zip && \
  unzip /tmp/tofu.zip -d /tmp && \
  mv /tmp/tofu /usr/local/bin/tofu && \
  rm -f /tmp/*
