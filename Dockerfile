FROM ubuntu:1.19
LABEL authors="nacho"
LABEL org.opencontainers.image.revision="${GIT_SHA}"
ENTRYPOINT ["top", "-b"]

# Container healthcheck (image metadata)
HEALTHCHECK --interval=30s --timeout=3s --retries=3 CMD exit 0
# Run as a non-root user
USER 1001
