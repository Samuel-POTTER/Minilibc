##
## EPITECH PROJECT, 2019
## makefile
## File description:
## math
##

SRC		=	my_strcmp.s		\
			my_strlen.s		\
			my_strncmp.s	\
			my_strchr.s		\
			my_memset.s		\
			my_memcpy.s		\
			my_strstr.s

OBJ		=	$(SRC:.s=.o)

CFLAGS		=	-Iinclude

LDFLAGS		= -shared

LD			=	gcc

UNAME_S	=	$(shell uname -s)
ifeq ($(UNAME_S), Linux)
	CFLAGS += -felf64
	LD		=	ld
endif
ifeq ($(UNAME_S), Darwin)
	CFLAGS += -fmacho64
endif

CC		=	nasm

NAME		=	libasm.so

all:			$(NAME)

$(NAME):		$(OBJ)
		$(LD) -o $(NAME) $(OBJ) $(LDFLAGS)

%.o: %.s
	nasm -o $@ $^ $(CFLAGS)

clean:
			rm -rf $(OBJ)

fclean:			clean
			rm -rf $(NAME)

re:			fclean all

.PHONY:			fclean all clean re
