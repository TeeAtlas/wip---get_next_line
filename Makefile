# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: taboterm <taboterm@student.42wolfsburg.de> +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/01 19:32:54 by taboterm          #+#    #+#              #
#    Updated: 2022/11/10 12:26:03 by taboterm         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = get_next_line.a

SRC = ft_strlen.c ft_strchr.c ft_strjoin.c

OBJS = $(SRC:.c=.o)

CC = gcc
RM = rm -f
CFLAGS = -c -Wall -Wextra -Werror
INCLUDE = get_next_line.h

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

all: $(NAME)

clean:
	/bin/rm -f *.o a.out getnextline test
	
fclean: clean 
	/bin/rm -f *.o a.out getnextline test$(NAME)
	
re: fclean all

.PHONY: clean fclean all re