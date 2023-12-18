FROM	nginx:1.25.3-alpine


COPY	conf/default.conf /etc/nginx/conf.d/default.conf
RUN	apk add openssl
RUN	openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    	-keyout /etc/nginx/cert.key -out /etc/nginx/cert.crt \
    	-subj "/C=US/ST=State/L=City/O=Organization/CN=localhost"

EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]

