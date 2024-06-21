FROM alpine:latest

# Install system dependencies
RUN apk update && \
    apk add --no-cache bash curl postgresql aws-cli && \
    rm -rf /var/cache/apk/*

USER 1000

CMD ["/bin/sh"]

