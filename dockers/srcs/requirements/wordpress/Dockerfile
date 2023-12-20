FROM alpine:3.18

RUN apk update && apk upgrade
RUN apk add php php-fpm php-opcache php-gd php-mysqli php-zlib php-curl


EXPOSE 9000

ENTRYPOINT ["php-fpm81", "-F"]

