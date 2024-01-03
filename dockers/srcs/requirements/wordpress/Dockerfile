FROM alpine:3.18

RUN apk update && apk upgrade
RUN apk add curl php81 php81-fpm php81-opcache php81-gd php81-mysqli php81-zlib php81-curl php81-phar php81-iconv wget mysql-client nmap

COPY ./conf/www.conf /etc/php81/php-fpm.d/www.conf
COPY ./tools/start.sh /root/start.sh

EXPOSE 9000

ENTRYPOINT ["sh", "/root/start.sh"]

