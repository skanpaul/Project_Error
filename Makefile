NAME	= main

CC		= gcc
CFLAG	= -Wall -Wextra -Werror

RM		= rm -f

SRC		= $(wildcard *.c)
OBJ		= $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(CFLAG) $? -o $(NAME)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re