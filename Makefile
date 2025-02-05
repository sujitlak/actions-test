# Compiler and flags
CXX = g++
CXXFLAGS = -std=c++17 -Wall -Wextra -g

# Files
SRCS = main.cpp apple.cpp banana.cpp
HEADERS = apple.h banana.h
OBJS = $(SRCS:.cpp=.o)
EXEC = sample_prog

# Default target
all: $(EXEC)

# Link the object files to create the executable
$(EXEC): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $(EXEC) $(OBJS)

# Compile the source files into object files
%.o: %.cpp $(HEADERS)
	$(CXX) $(CXXFLAGS) -c $<

# Clean the build files
clean:
	rm -f $(OBJS) $(EXEC)

# Rebuild the project
rebuild: clean all
