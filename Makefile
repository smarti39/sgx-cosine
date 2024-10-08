# Compiler and flags
CXX = g++
CXXFLAGS = -Wall -std=c++17 -Iinclude

# Output executable
TARGET = ImageMatching

# Source files
SRCS = src/main.cpp src/vector_utils.cpp

# Object files
OBJS = $(SRCS:.cpp=.o)

# Default target
all: $(TARGET)

# Rule to build the target executable
$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJS)

# Rule to build object files
src/%.o: src/%.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Clean up build files
clean:
	rm -f $(OBJS) $(TARGET)

# Phony targets
.PHONY: all clean
