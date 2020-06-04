FROM alpine:latest
RUN apk add --update --no-cache curl coreutils bash jq && rm -rf /var/cache/apk/*
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD ["curl"]