# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ukhavham <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/21 07:14:44 by ukhavham          #+#    #+#              #
#    Updated: 2018/06/15 08:29:30 by ukhavham         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CFLAGS = -Wall -Werror -Wextra -I.
CC = gcc
SRCS = ft_isalpha.c \
	  ft_isdigit.c \
	  ft_isalnum.c \
	  ft_isascii.c \
	  ft_isprint.c \
	  ft_toupper.c \
	  ft_tolower.c \
	  ft_isupper.c \
	  ft_islower.c \
	  ft_memset.c \
	  ft_bzero.c \
	  ft_memcpy.c \
	  ft_memccpy.c \
	  ft_memchr.c \
	  ft_memcmp.c \
	  ft_strlen.c \
	  ft_strdup.c \
	  ft_strcpy.c \
	  ft_strcmp.c \
	  ft_strcat.c \
	  ft_strncmp.c \
	  ft_strchr.c \
	  ft_strncpy.c \
	  ft_strncat.c \
	  ft_atoi.c	\
	  ft_strstr.c \
	  ft_memalloc.c \
	  ft_memmove.c \
	  ft_memdel.c \
	  ft_strnstr.c \
	  ft_strrchr.c \
	  ft_strnew.c \
	  ft_strdel.c \
	  ft_strclr.c \
	  ft_putstr.c \
	  ft_putchar.c \
	  ft_putstr_fd.c \
	  ft_putendl_fd.c \
	  ft_putchar_fd.c \
	  ft_putnbr_fd.c \
	  ft_putnbr.c \
	  ft_putendl.c \
	  ft_striter.c \
	  ft_striteri.c \
	  ft_strmap.c \
	  ft_strmapi.c \
	  ft_strequ.c \
	  ft_strnequ.c \
	  ft_strlcat.c \
	  ft_strsub.c \
	  ft_strjoin.c \
	  ft_isspace.c \
	  ft_strtrim.c \
	  ft_strsplit.c \
	  ft_itoa.c \
	
OBJ = 	$(SRCS:.c=.o)
all:	$(NAME)
$(NAME):
		@$(CC) $(CFLAGS) -c $(SRCS)
		@ar rc $(NAME) $(OBJ)
		@ranlib $(NAME)
clean:
		@rm -f $(OBJ)
fclean: clean
		@rm -f $(NAME)
re: fclean all
.PHONY: clean fclean all
