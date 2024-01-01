# ---------------------------------- NAME ------------------------------------ #

NAME = inception

# ------------------------------- DIRECTORIES -------------------------------- #



# ---------------------------------- FILES ----------------------------------- #



# --------------------------------- RULES ------------------------------------ #

all: $(NAME)

$(NAME): 
	touch $(NAME)
	mkdir ~/inskim/data/
	docker compose up -f ./srcs/docker-compose.yml --build
clean:
	rm -rf $(NAME)
	docker system prune

fclean: clean
	docker volume prune

re:	make fclean
	make all

.PHONY: all clean fclean re
