openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
         -keyout /etc/nginx/cert.key -out /etc/nginx/cert.crt \
         -subj "/C=US/ST=State/L=City/O=Organization/CN=localhost";

while true ; do 
	result=$(nmap wordpress -p 9000 | grep open | wc -l)

	if [[ $result -ge 1 ]]; then
		echo "port 9000 wordpress open"
		break
	else
		echo "nginx: wordpress container not on";
		sleep 1	
	fi
done


nginx -g 'daemon off;'
