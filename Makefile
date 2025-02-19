.PHONY: build clean

SRC_DIR = src
BUILD_DIR = build
SRC_FILES = $(wildcard $(SRC_DIR)/*.c)
OBJ_FILES = $(SRC_FILES:$(SRC_DIR)/%.c=$(BUILD_DIR)/%.o)
TARGET = $(BUILD_DIR)/main

build-clean:
	make clean
	make build

build: $(TARGET)

$(TARGET): $(OBJ_FILES)
	@mkdir -p $(BUILD_DIR)
	gcc -o $@ $^

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(BUILD_DIR)
	gcc -c -o $@ $<

clean:
	rm -f build/main
