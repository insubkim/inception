# ---------------------------------- NAME ------------------------------------ #

NAME = inception

# --------------------------------- RULES ------------------------------------ #

all: $(NAME)

$(NAME): 
	docker compose -f ./srcs/docker-compose.yml up --build
clean:
	docker system prune

fclean: clean
	docker volume prune

remove: fclean
	sh ./srcs/requirements/tools/remove.sh
	rm -rf ~/inskim/data/wordpress_php/*
	rm -rf ~/inskim/data/wordpress_db/*

re:	make fclean
	make all

.PHONY: all clean fclean re
