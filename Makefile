# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hcabel <hcabel@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/04/21 11:09:36 by hcabel            #+#    #+#              #
#    Updated: 2019/04/21 17:06:31 by hcabel           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME			=    GNL
FLAGS			=    -Wall -Wextra -Werror

OBJECT_REP		=    objects
SOURCES_REP		=    srcs

SOURCES			=    get_next_line.c main.c
INCLUDES		=	-I includes/ -I libft/includes

OBJECTS			=	$(addprefix $(OBJECT_REP)/, $(SOURCES:.c=.o))

.PHONY: all clean fclean re mkdir make
.SILENT: all clean fclean re $(OBJECT_FILE) $(NAME) $(OBJECTS) mkdir make remake

all: $(NAME)

$(NAME): mkdir make $(OBJECTS) 
	gcc $(FLAGS) -o $(NAME) $(OBJECTS) $(LIB) -lmlx $(FRAMEWORK) libft/libft.a

mkdir:
	mkdir -p $(OBJECT_REP)

$(OBJECT_REP)/%.o: $(SOURCES_REP)/%.c
	gcc $(FLAGS) -o $@ $(INCLUDES) -c $<

clean:
	rm -rf $(OBJECT_REP)

fclean: clean
	rm -f $(NAME)

re: fclean remake all

remake:
	make -C libft/ re

make:
	make -C libft/
