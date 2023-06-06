##
## EPITECH PROJECT, 2022
## B-YEP-400-STG-4-1-zappy-lilou.stoll-metz
## File description:
## Makefile
##

## MAKE SHENANIGANS ##

MAKEFLAGS += -j16 -l16 -s

## ALL ##

all: FRAMEWORK

## FRAMEWORK ##

FRAMEWORK_NAME				=   raylibFramework
FRAMEWORK_BINARIES			=   $(shell find ./raylibFramework -name "*.cpp")
CXX     				=   g++
CXXFLAGS  				=  	-std=c++20 -Wall -Wextra -O3 -fopenmp -lGL -lm -lpthread -ldl -lnsl -lrt -lX11
EXTERNAL_FRAMEWORK_LIB		=	-L./raylibFramework/raylib -lraylib
FRAMEWORK_INCLUDE_PATH		=	-I./src/include -I./raylib

FRAMEWORK: $(FRAMEWORK_NAME)

$(FRAMEWORK_NAME): $(FRAMEWORK_BINARIES)
	@echo "$(BBLUE)Compiling $(BWHITE)$(FRAMEWORK_NAME)$(NO_COLOR)"
	@$(CXX) $(FRAMEWORK_INCLUDE_PATH) -o $@ $^ $(EXTERNAL_FRAMEWORK_LIB) $(CXXFLAGS); \
	if [ $$? -eq 0 ]; then \
		echo "$(BGREEN)Compilation successful.$(NO_COLOR)"; \
	else \
		echo "$(BRED)Compilation failed.$(NO_COLOR)"; exit 2; \
	fi

%.o: %.cpp
	$(CXX) $(FRAMEWORK_INCLUDE_PATH)  -c $< -o $@ $(CXXFLAGS)

## clean ##

clean:
	@rm -f $(FRAMEWORK_OBJS) $(SERVER_OBJS)
	@echo "$(BBLUE)Cleaned $(BBROWN).o$(NO_COLOR)"

## fclean ##

fclean: clean
	@rm -f $(FRAMEWORK_NAME) $(SERVER_NAME) $(AI_NAME)
	@echo "$(BBLUE)Cleaned $(BWHITE)$(FRAMEWORK_NAME)$(BBLUE) & $(BWHITE)$(SERVER_NAME)$(NO_COLOR)"

## re ##

re: fclean all

.PHONY:  all clean fclean re gui server