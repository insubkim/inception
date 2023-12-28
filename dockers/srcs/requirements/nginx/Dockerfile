FROM alpine:3.18

RUN apk add nginx openssl nmap

COPY ./conf/default.conf /etc/nginx/http.d/default.conf
COPY ./tools/start.sh ~/start.sh

EXPOSE 80

ENTRYPOINT ["sh", "~/start.sh"]
