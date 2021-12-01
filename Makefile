# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hsabir <marvin@42lausanne.ch>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/27 12:21:27 by hsabir            #+#    #+#              #
#    Updated: 2021/12/01 09:10:31 by hsabir           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SERVER = server
SERVER_BONUS = server_bonus
CLIENT = client
CLIENT_BONUS = client_bonus
libft = libft
printf = ft_printf
libft_dir = ./libft
printf_dir = ./ft_printf

CC = gcc
CFLAGS = -Wall -Werror -Wextra
RM = rm -P

all: $(SERVER) $(CLIENT) $(SERVER_BONUS) $(CLIENT_BONUS)

$(SERVER):
	make all -C $(libft)/
	make all -C $(printf)/
	$(CC) $(CFLAGS) $(printf_dir)/libftprintf.a $(libft_dir)/libft.a server.c -o server

$(CLIENT):
	make all -C $(libft)/
	make all -C $(printf)/
	$(CC) $(CFLAGS) $(printf_dir)/libftprintf.a $(libft_dir)/libft.a client.c -o client

$(SERVER_BONUS):
	make all -C $(libft)/
	make all -C $(printf)/
	$(CC) $(CFLAGS) $(printf_dir)/libftprintf.a $(libft_dir)/libft.a server_bonus.c -o server_bonus

$(CLIENT_BONUS):
	make all -C $(libft)/
	make all -C $(printf)/
	$(CC) $(CFLAGS) $(printf_dir)/libftprintf.a $(libft_dir)/libft.a client_bonus.c -o client_bonus



bonus: all

server: $(SERVER)

client: $(CLIENT)

server_bonus: $(SERVER_BONUS)

client_bonus: $(CLIENT_BONUS)

clean:
	make clean -C $(libft)/
	make clean -C $(printf)/
	$(RM) $(CLIENT) $(SERVER) $(SERVER_BONUS) $(CLIENT_BONUS)

fclean:
	make fclean -C $(libft)/
	make fclean -C $(printf)/
	$(RM) $(CLIENT) $(SERVER) $(SERVER_BONUS) $(CLIENT_BONUS)

re: fclean all
