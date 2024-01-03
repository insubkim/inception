docker stop `docker ps -q`
docker rm `docker ps -aq` 
docker image rm `docker image ls -q`
docker volume rm `docker volume ls -q`
yes | docker system prune
yes | docker volume prune
docker network rm `docker network ls -q`
