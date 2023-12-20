FROM alpine:3.18

RUN apk add nginx
RUN apk add openssl

COPY ./conf/nginx.conf /etc/nginx/nginx.conf
COPY ./tools/hello.php /var/www/localhost/htdocs/hello.php

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	 -keyout /etc/nginx/cert.key -out /etc/nginx/cert.crt \
	 -subj "/C=US/ST=State/L=City/O=Organization/CN=localhost"; 

EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]
