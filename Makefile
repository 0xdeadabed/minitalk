# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hsabir <marvin@42lausanne.ch>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/27 12:21:27 by hsabir            #+#    #+#              #
#    Updated: 2021/11/27 12:43:43 by hsabir           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SERVER = server
CLIENT = client
libft = libft
printf = ft_printf
libft_dir = ./libft
printf_dir = ./ft_printf

CC = gcc
CFLAGS = -Wall -Werror -Wextra
RM = rm -P

$(SERVER):
	make all -C $(libft)/
	make all -C $(printf)/
	$(CC) $(CFLAGS) $(printf_dir)/libftprintf.a $(libft_dir)/libft.a server.c -o server

$(CLIENT):
	make all -C $(libft)/
	make all -C $(printf)/
	$(CC) $(CFLAGS) $(printf_dir)/libftprintf.a $(libft_dir)/libft.a client.c -o client


all: $(SERVER) $(CLIENT)

bonus: all

server: $(SERVER)

client: $(CLIENT)

clean:
	make clean -C $(libft)/
	make clean -C $(printf)/
	$(RM) $(CLIENT) $(SERVER)

fclean:
	make fclean -C $(libft)/
	make fclean -C $(printf)/
	$(RM) $(CLIENT) $(SERVER)

re: fclean all
