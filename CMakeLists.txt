#Tested:
#   emcmake cmake -D PLATFORM=Web -D BUILD_EXAMPLES=FALSE -B build/wasm
#   cmake -G Xcode -D BUILD_EXAMPLES=FALSE -B build/xcode

cmake_minimum_required(VERSION 3.10)

# set the project name
project(test)
add_subdirectory(${CMAKE_SOURCE_DIR}/lib/raylib test)



# Sources to be compiled
set(game_sources
    ${CMAKE_SOURCE_DIR}/src/basic_window.c
)



add_executable(test ${game_sources})
target_include_directories(test PRIVATE ${CMAKE_SOURCE_DIR}/lib/raylib/src)

target_link_libraries(test raylib)

if (${PLATFORM} MATCHES "Web")
    add_definitions(-DPLATFORM_WEB)
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Os -s USE_GLFW=3 -s TOTAL_MEMORY=67108864 -s FORCE_FILESYSTEM=1")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} --shell-file ${CMAKE_SOURCE_DIR}/lib/raylib/src/shell.html")
    set(CMAKE_EXECUTABLE_SUFFIX ".html")
else()
    add_definitions(-DPLATFORM_DESKTOP)
endif()
