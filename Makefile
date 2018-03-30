# **************************************************************************** #
#                                                           LE - /             #
#                                                               /              #
#    Makefile                                         .::    .:/ .      .::    #
#                                                  +:+:+   +:    +:  +:+:+     #
#    By: jjanin-r <jjanin-r@student.le-101.fr>      +:+   +:    +:    +:+      #
#                                                  #+#   #+    #+    #+#       #
#    Created: 2017/11/07 14:07:48 by jmonneri     #+#   ##    ##    #+#        #
#    Updated: 2018/03/30 18:53:26 by jmonneri    ###    #+. /#+    ###.fr      #
#                                                          /                   #
#                                                         /                    #
# **************************************************************************** #
.PHONY: all clean fclean re

NAME = libft.a
CC = gcc
CC_FLAGS = -Wall -Wextra -Werror
PATH_SRC_LIBFT = ./
PATH_OBJ_LIBFT = ./
PATH_INC_LIBFT = ./

#******************************************************************************#
#                                    LIBFT                                     #
#******************************************************************************#
FILES_LIBFT = ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c ft_memmove.c\
		ft_memcmp.c ft_memchr.c ft_strncat.c ft_strlcat.c ft_strcat.c\
		ft_strncpy.c ft_strcpy.c ft_strdup.c ft_strlen.c ft_putchar.c\
		ft_putstr.c ft_putnbr.c ft_strchr.c ft_strrchr.c ft_strstr.c\
		ft_strnstr.c ft_strcmp.c ft_strncmp.c ft_atoi.c ft_isalpha.c\
		ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_toupper.c\
		ft_tolower.c ft_memalloc.c ft_memdel.c ft_strnew.c ft_strdel.c\
		ft_strclr.c ft_striter.c ft_striteri.c ft_strmap.c ft_strmapi.c\
		ft_strequ.c ft_strnequ.c ft_strsub.c ft_strjoin.c ft_strtrim.c\
		ft_strsplit.c ft_itoa.c ft_putendl.c ft_putchar_fd.c ft_putstr_fd.c\
		ft_putendl_fd.c ft_putnbr_fd.c ft_lstnew.c ft_lstdelone.c ft_lstdel.c\
		ft_lstadd.c ft_lstiter.c ft_lstmap.c ft_intlen.c ft_print_strlst.c\
		ft_putstr2d.c ft_freestr2d.c get_next_line.c
OBJ_LIBFT = $(addprefix $(PATH_OBJ_LIBFT), $(FILES_LIBFT:.c=.o))
SRC_LIBFT = $(addprefix $(PATH_SRC_LIBFT), $(FILES_LIBFT))
INC_LIBFT = $(addprefix $(PATH_INC_LIBFT), libft.h)

#******************************************************************************#
#                                    ALL                                       #
#******************************************************************************#

all: $(NAME)

#******************************************************************************#
#                             Compilation LIBFT                                #
#******************************************************************************#

$(NAME): $(OBJ_LIBFT) $(INC_LIBFT)
	@echo "\n\033[1m🦄 🦄 🦄 🦄 CREATION DE LA LIBFT🦄 🦄 🦄 🦄\033[0m\n"
	@ar rcs $(NAME) $(OBJ_LIBFT)
	@echo "  👍  👍  👍 \033[1mLIBRAIRIE CREEE\033[0m👍  👍  👍\n"

$(PATH_OBJ_LIBFT)%.o: $(PATH_SRC_LIBFT)%.c
	@echo "0️⃣  Compilation de \033[1m$<\033[0m en \033[1m$@\033[0m"
	@$(CC) $(CC_FLAGS) -o $@ -c $< -I $(PATH_INC_LIBFT)
	@echo "   \033[0;32mCOMPILATION REUSSIE\033[0m\n"

#******************************************************************************#
#                                   OTHER                                      #
#******************************************************************************#

clean:
	@echo "\n\033[1m🦄 🦄 🦄 🦄 SUPPRESSION DES OBJETS🦄 🦄 🦄 🦄\033[0m\n"
	@rm -f $(OBJ_LIBFT)

fclean: clean
	@echo "\n\033[1m🦄 🦄 🦄 🦄 SUPPRESSION DE $(NAME)🦄 🦄 🦄 🦄\033[0m\n"
	@rm -f $(NAME)

re: fclean all
