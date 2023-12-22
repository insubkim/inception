while true ; do 
	result=$(nmap wordpress -p 9000 | grep open | wc -l)

	if [[ $result -ge 1 ]]; then
		echo "port 9000 wordpress open"
		break
	else
		echo "depend container not on";
		sleep 1	
	fi
done


nginx -g 'daemon off;'
