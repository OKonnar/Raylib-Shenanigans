##
## EPITECH PROJECT, 2022
## B-YEP-400-STG-4-1-zappy-lilou.stoll-metz
## File description:
## Makefile
##

## MAKE SHENANIGANS ##

MAKEFLAGS += -j16 -l16

## ALL ##

all: game

## FRAMEWORK ##

GAME_NAME				=   game
GAME_BINARIES			=   $(shell find ./src -name "*.cpp")
CXX     				=   g++
CXXFLAGS  				=  	-std=c++20 -Wno-missing-field-initializers -Wall -Wextra -O3 -fopenmp -lGL -lm -lpthread -ldl -lnsl -lrt -lX11
EXTERNAL_GAME_LIB		=	-L./raylib -lraylib
GAME_INCLUDE_PATH		=	-I./src/include -I./raylib

GAME: $(GAME_NAME)

$(GAME_NAME): $(GAME_BINARIES)
	@echo "Compiling $(GAME_NAME)"
	@$(CXX) $(GAME_INCLUDE_PATH) -o $@ $^ $(EXTERNAL_GAME_LIB) $(CXXFLAGS); \
	if [ $$? -eq 0 ]; then \
		echo "Compilation successful."; \
	else \
		echo "Compilation failed."; exit 2; \
	fi

%.o: %.cpp
	$(CXX) $(GAME_INCLUDE_PATH)  -c $< -o $@ $(CXXFLAGS)

## clean ##

clean:
	@rm -f $(GAME_OBJS)
	@echo "Cleaned .o"

## fclean ##

fclean: clean
	@rm -f $(GAME_NAME) $(SERVER_NAME) $(AI_NAME)
	@echo "Cleaned $(GAME_NAME)"

## re ##

re: fclean all

.PHONY:  all clean fclean re gui server