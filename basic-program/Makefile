# Define the compiler and flags
CXX = g++
CXXFLAGS = -Wall -std=c++11

# Define the output binary
TARGET = hello_world

# Define the source files
SRC = main.cpp

# Default rule to build the program
all: $(TARGET)

# Rule to create the target executable
$(TARGET): $(SRC)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(SRC)

# Rule to clean up the build files
clean:
	rm -f $(TARGET)

# Phony targets
.PHONY: all clean
