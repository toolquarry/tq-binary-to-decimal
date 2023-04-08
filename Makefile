# Compiler and compiler flags
CC = gcc
CFLAGS = -Wall -I./include

# Directories
SRC_DIR = src
OBJ_DIR = obj
LIB_DIR = lib

# Files
SRC_FILES = $(wildcard $(SRC_DIR)/*.c)
OBJ_FILES = $(patsubst $(SRC_DIR)/%.c,$(OBJ_DIR)/%.o,$(SRC_FILES))
LIB_FILE = $(LIB_DIR)/libbinary_to_decimal.a

# Targets
.PHONY: all clean

all: $(LIB_FILE)

$(LIB_FILE): $(OBJ_FILES) | $(LIB_DIR)
	ar rcs $@ $^

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c | $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(OBJ_DIR):
	mkdir -p $@

$(LIB_DIR):
	mkdir -p $@

clean:
	rm -rf $(OBJ_DIR) $(LIB_DIR)

