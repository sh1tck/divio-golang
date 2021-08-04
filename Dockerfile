FROM alpine:3.5

EXPOSE 443

ADD entrypoint.sh /opt/entrypoint.sh

RUN apk add --no-cache --virtual .build-deps ca-certificates curl \
 && chmod +x /opt/entrypoint.sh

ENTRYPOINT ["sh", "-c", "/opt/entrypoint.sh"]
