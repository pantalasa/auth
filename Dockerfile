FROM ubuntu:1.19
LABEL authors="nacho"
LABEL org.opencontainers.image.revision="${GIT_SHA}"
ENTRYPOINT ["top", "-b"]
