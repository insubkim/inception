# ---------------------------------- NAME ------------------------------------ #

NAME = inception

# ------------------------------- DIRECTORIES -------------------------------- #



# ---------------------------------- FILES ----------------------------------- #



# --------------------------------- RULES ------------------------------------ #

all: $(NAME)

$(NAME): 
	docker compose -f ./srcs/docker-compose.yml up --build
clean:
	docker system prune

fclean: clean
	docker volume prune

remove:
	sh ./srcs/requirements/tools/remove.sh
	
re:	make fclean
	make all

.PHONY: all clean fclean re
