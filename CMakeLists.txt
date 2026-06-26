
cmake_minimum_required(VERSION 3.10)
project(clorox)

set(CMAKE_C_STANDARD 99)

# header files directory
include_directories(src)


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
