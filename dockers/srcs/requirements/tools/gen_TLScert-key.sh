
penssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    	-keyout /etc/nginx/cert.key -out /etc/nginx/cert.crt \
    	-subj "/C=US/ST=State/L=City/O=Organization/CN=localhost"
