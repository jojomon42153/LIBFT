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

.PHONY: all clean fclean re clear

NAME = libft.a
CC = gcc
CC_FLAGS = -Wall -Wextra -Werror
PATH_SRC = ./srcs/
PATH_OBJ = ./objs/
PATH_INC = ./include/
INCS = $(addprefix $(PATH_INC), libft.h)

#******************************************************************************#
#                                    CHARS                                     #
#******************************************************************************#

PATH_OBJ_CHARS = $(PATH_OBJ)Chars/
PATH_SRC_CHARS = $(PATH_SRC)Chars/
FILES_CHARS = ft_atoi ft_tolower ft_toupper ft_wchartowstr
OBJ_CHARS = $(addprefix $(PATH_OBJ_CHARS), $(addsuffix .o , $(FILES_CHARS)))
SRC_CHARS = $(addprefix $(PATH_SRC_CHARS), $(addsuffix .c , $(FILES_CHARS)))

#******************************************************************************#
#                                    GNL                                       #
#******************************************************************************#

PATH_OBJ_GNL = $(PATH_OBJ)Gnl/
PATH_SRC_GNL = $(PATH_SRC)Gnl/
FILES_GNL = get_next_line
OBJ_GNL = $(addprefix $(PATH_OBJ_GNL), $(addsuffix .o , $(FILES_GNL)))
SRC_GNL = $(addprefix $(PATH_SRC_GNL), $(addsuffix .c , $(FILES_GNL)))

#******************************************************************************#
#                                    INTS                                      #
#******************************************************************************#

PATH_OBJ_INTS = $(PATH_OBJ)Ints/
PATH_SRC_INTS = $(PATH_SRC)Ints/
FILES_INTS = ft_intlen ft_int_swap ft_itoa ft_lintlen ft_litoa_base ft_litoa\
			ft_ulintlen ft_ulitoa_base ft_ulitoa
OBJ_INTS = $(addprefix $(PATH_OBJ_INTS), $(addsuffix .o , $(FILES_INTS)))
SRC_INTS = $(addprefix $(PATH_SRC_INTS), $(addsuffix .c , $(FILES_INTS)))

#******************************************************************************#
#                                    LISTS                                     #
#******************************************************************************#

PATH_OBJ_LISTS = $(PATH_OBJ)Lists/
PATH_SRC_LISTS = $(PATH_SRC)Lists/
FILES_LISTS = ft_lstadd ft_lstdel ft_lstdelone ft_lstiter ft_lstmap ft_lstnew
OBJ_LISTS = $(addprefix $(PATH_OBJ_LISTS), $(addsuffix .o , $(FILES_LISTS)))
SRC_LISTS = $(addprefix $(PATH_SRC_LISTS), $(addsuffix .c , $(FILES_LISTS)))

#******************************************************************************#
#                                    MEMORY                                    #
#******************************************************************************#

PATH_OBJ_MEMORY = $(PATH_OBJ)Memory/
PATH_SRC_MEMORY = $(PATH_SRC)Memory/
FILES_MEMORY = ft_bzero ft_gswap ft_memalloc ft_memccpy ft_memchr ft_memcmp\
			ft_memcpy ft_memdel ft_memmove ft_memset
OBJ_MEMORY = $(addprefix $(PATH_OBJ_MEMORY), $(addsuffix .o , $(FILES_MEMORY)))
SRC_MEMORY = $(addprefix $(PATH_SRC_MEMORY), $(addsuffix .c , $(FILES_MEMORY)))

#******************************************************************************#
#                                    PUTS                                      #
#******************************************************************************#

PATH_OBJ_PUTS = $(PATH_OBJ)Puts/
PATH_SRC_PUTS = $(PATH_SRC)Puts/
FILES_PUTS =ft_putchar ft_putchar_fd ft_putendl ft_putendl_fd ft_putnbr\
			ft_putnbr_fd ft_putstr2d ft_putstr ft_putstr_fd ft_putstrlst\
			ft_putwchar ft_putwstr
OBJ_PUTS = $(addprefix $(PATH_OBJ_PUTS), $(addsuffix .o , $(FILES_PUTS)))
SRC_PUTS = $(addprefix $(PATH_SRC_PUTS), $(addsuffix .c , $(FILES_PUTS)))

#******************************************************************************#
#                                    STRINGS                                   #
#******************************************************************************#

PATH_OBJ_STRS = $(PATH_OBJ)Strings/
PATH_SRC_STRS = $(PATH_SRC)Strings/
FILES_STRS = ft_freestr2d ft_print_strlst ft_str2dlen ft_strcat ft_strchr\
			ft_strclr ft_strcmp ft_strcnew ft_strcpy ft_strdel ft_strdup\
			ft_strequ ft_striter ft_striteri ft_strjoin ft_strlcat ft_strlen\
			ft_strmap ft_strmapi ft_strncat ft_strncmp ft_strncpy ft_strnequ\
			ft_strnew ft_strnstr ft_strrchr ft_strsplit ft_strstr ft_strsub\
			ft_strtolower ft_strtoupper ft_strtrim ft_wstrdup ft_wstrlen
OBJ_STRS = $(addprefix $(PATH_OBJ_STRS), $(addsuffix .o , $(FILES_STRS)))
SRC_STRS = $(addprefix $(PATH_SRC_STRS), $(addsuffix .c , $(FILES_STRS)))

#******************************************************************************#
#                                    TESTS                                     #
#******************************************************************************#

PATH_OBJ_TEST = $(PATH_OBJ)Test/
PATH_SRC_TEST = $(PATH_SRC)Test/
FILES_TEST = ft_isalnum ft_isalpha ft_isascii ft_isdigit ft_isprint
OBJ_TEST = $(addprefix $(PATH_OBJ_TEST), $(addsuffix .o , $(FILES_TEST)))
SRC_TEST = $(addprefix $(PATH_SRC_TEST), $(addsuffix .c , $(FILES_TEST)))

#******************************************************************************#
#                                    ALL                                       #
#******************************************************************************#

PATHS_OBJ = $(PATH_OBJ) $(PATH_OBJ_CHARS) $(PATH_OBJ_GNL) $(PATH_OBJ_INTS)\
		$(PATH_OBJ_LISTS) $(PATH_OBJ_MEMORY) $(PATH_OBJ_PUTS) $(PATH_OBJ_STRS)\
		$(PATH_OBJ_TEST)
OBJS = $(OBJ_CHARS) $(OBJ_GNL) $(OBJ_INTS) $(OBJ_LISTS) $(OBJ_MEMORY)\
		$(OBJ_PUTS) $(OBJ_STRS) $(OBJ_TEST)
SRCS = $(SRC_CHARS) $(SRC_GNL) $(SRC_INTS) $(SRC_LISTS) $(SRC_MEMORY)\
		$(SRC_PUTS) $(OBSRC_STRS) $(SRC_TEST)
FILES = $(FILES_CHARS) $(FILES_GNL) $(FILES_INTS) $(FILES_LISTS)\
		$(FILES_MEMORY) $(FILES_PUTS) $(FILES_STRS) $(FILES_TEST)

#******************************************************************************#
#                                    RULES                                     #
#******************************************************************************#

all: $(NAME)

clean:
	@echo "\n\033[1m🦄 🦄 🦄 🦄 SUPPRESSION DES OBJETS🦄 🦄 🦄 🦄\033[0m\n"
	@rm -rf $(PATH_OBJ)

fclean: clean
	@echo "\n\033[1m🦄 🦄 🦄 🦄 SUPPRESSION DE $(NAME)🦄 🦄 🦄 🦄\033[0m\n"
	@rm -f $(NAME)

clear:
	@clear

re: fclean all

#******************************************************************************#
#                             Compilation LIBFT                                #
#******************************************************************************#

$(NAME): clear $(PATHS_OBJ) $(OBJS) $(INCS)
	@echo "\n\033[1m🦄 🦄 🦄 🦄 CREATION DE LA LIBFT🦄 🦄 🦄 🦄\033[0m\n"
	@ar rcs $(NAME) $(OBJS)
	@echo "  👍  👍  👍 \033[1mLIBRAIRIE CREEE\033[0m👍  👍  👍\n"

$(PATHS_OBJ):
	@mkdir $@

$(PATH_OBJ)%.o: $(PATH_SRC)%.c
	@printf %b "0️⃣  Compilation de \033[1m$<\033[0m en \033[1m$@\033[0m..."
	@$(CC) $(CC_FLAGS) -o $@ -c $< -I $(PATH_INC)
	@printf "\r"
	@printf "                                                                                     \r"
