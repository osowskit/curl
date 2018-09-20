FROM alpine:latest

RUN apk add --no-cache curl

COPY curl_entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/curl_entrypoint.sh

ENTRYPOINT ["/usr/local/bin/curl_entrypoint.sh"]
