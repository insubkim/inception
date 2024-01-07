docker stop `docker ps -q` &2> /dev/null
docker rm `docker ps -aq`  &2> /dev/null
docker image rm `docker image ls -q` &2> /dev/null
docker volume rm `docker volume ls -q` &2> /dev/null
yes | docker system prune &2> /dev/null
yes | docker volume prune &2> /dev/null
docker network rm `docker network ls -q` &2> /dev/null
