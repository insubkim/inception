# ---------------------------------- NAME ------------------------------------ #

NAME = inception

# --------------------------------- RULES ------------------------------------ #

all: $(NAME)

$(NAME): 
	mkdir -p /home/inskim/data/wordpress_db &2> /dev/null
	mkdir /home/inskim/data/wordpress_php &2> /dev/null
	docker compose -f ./srcs/docker-compose.yml up --build
clean:
	yes | docker system prune

fclean: clean
	yes | docker volume prune

remove: fclean
	sh ./srcs/requirements/tools/remove.sh &2>/dev/null
	rm -rf /home/inskim/data/wordpress_php/* 
	rm -rf /home/inskim/data/wordpress_db/* 

re:	make fclean
	make all

.PHONY: all clean fclean re
