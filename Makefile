CLIENT			=	client
CLIENT_B		=	client_bonus
SERVER			=	server
SERVER_B		=	server_bonus

LIBFT_DIR = ./ft_printf/libft
LIBFT = libft.a
PRINTF_DIR = ./ft_printf
PRINTF = libftprintf.a

INC = .

SRCS = ./client.c \
		./client_bonus.c \
		./server.c \
		./server_bonus.c

OBJS = $(addprefix $(OBJS_DIR)/, $(notdir $(SRCS:.c=.o)))


CC = gcc
CFLAGS = -Wall -Wextra -Werror
RM = rm -rf

all: $(NAME)

bonus : re
	@$(MAKE) -C $(LIBFT_DIR) $(PRINTF_DIR)
	@(CC) $(CFLAGS) -o $@ $^ -L$(LIBFT_DIR) $(PRINTF_DIR) -lft

$(NAME) : $(OBJS)
	@$(MAKE) -C $(LIBFT_DIR) $(PRINTF_DIR)
	@(CC) $(CFLAGS) -o $@ $^ -L$(LIBFT_DIR) $(PRINTF_DIR) -lft

$(OBJS_DIR) :
	@mkdir -p $(OBJS_DIR)

$(OBJS_DIR)/%.o : %.c | $(OBJS_DIR)
	@$(CC) $(CFLAGS) -o $@ -I $(INC) -I$(LIBFT_DIR) -I$(PRINTF_DIR) -c $^

clean:
	${RM} ${OBJS_CLIENT} ${OBJS_SERVER} ${OBJS_SERVER_B} ${OBJS_CLIENT_B}

fclean:	clean
	${RM} ${OBJS_DIR}

re: fclean all

.PHONY:	all bonus clean fclean re

