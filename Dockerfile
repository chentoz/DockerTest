FROM alpine:latest
RUN apk add rsync

ARG VERSION_GCC=10.2.1_pre1-r3

RUN apk update \
    && apk add --no-cache gcc==${VERSION_GCC} \
    && apk add --no-cache g++==${VERSION_GCC} \
    && rm -rf /var/cache/apk/*

FROM busybox:latest
RUN echo hello
