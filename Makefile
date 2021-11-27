# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hsabir <marvin@42lausanne.ch>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/27 12:21:27 by hsabir            #+#    #+#              #
#    Updated: 2021/11/27 12:35:45 by hsabir           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SERVER = server
libft = libft
printf = ft_printf
libft_dir = ./libft
peintf_dir = ./ft_printf

CC = gcc
CFLAGS = -Wall -Werror -Wextra
RM = rm -rfP

$(SERVER):
	make all -C $(libft)/
	make all -C $(printf)/
	$(CC) $(CFLAGS) $(printf_dir)/libftprintf.a $(libft_dir)/libft.a server.c -o server

$(CLIENT):
	make all -C $(libft)/
	make all -C $(printf)/
	$(CC) $(CFLAGS) $(printf_dir)/libftprintf.a $(libft_dir)/libft.a client.c -o client


all: server client

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
