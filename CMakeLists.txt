cmake_minimum_required(VERSION 3.10)

# set the project name
project(test)

# Sources to be compiled
set(game_sources
    ${CMAKE_SOURCE_DIR}/src/basic_window.c
)

# add the executable
add_executable(test ${game_sources})

target_include_directories(test PRIVATE ${CMAKE_SOURCE_DIR}/lib/raylib/src)

target_link_libraries(test ${CMAKE_SOURCE_DIR}/lib/raylib/src/libraylib.a)

set_target_properties(test PROPERTIES LINK_FLAGS "-s USE_GLFW=3 -s TOTAL_MEMORY=67108864 -s FORCE_FILESYSTEM=1")

if (EMSCRIPTEN)
    message("EMSCRIPTEN")
endif ()