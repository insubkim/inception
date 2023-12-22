# ---------------------------------- NAME ------------------------------------ #

NAME = inception

# ------------------------------- DIRECTORIES -------------------------------- #



# ---------------------------------- FILES ----------------------------------- #



# --------------------------------- RULES ------------------------------------ #

all: $(NAME)

$(NAME): 
	touch $(NAME)
	# docker compose

clean:
	rm -rf $(NAME)
	# some script

fclean: 
	sh ./srcs/requirements/tools/rmrfdocker	

re:	make fclean
	make all

.PHONY: all clean fclean re
