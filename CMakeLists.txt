
cmake_minimum_required(VERSION 3.10)
project(clorox)

set(CMAKE_C_STANDARD 99)

# Tell CMake where to find your header files
include_directories(src)

# Only list the source (.c) files here
add_executable(clorox 
    src/main.c 
    src/chunk.c
    src/memory.c
    src/debug.c
    src/value.c
    src/vm.c
    src/scanner.c
    src/compiler.c
    src/object.c
    src/table.c
)
