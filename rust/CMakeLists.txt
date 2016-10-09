cmake_minimum_required(VERSION 2.8)

project(libstracciatella)

find_package(Cargo REQUIRED)

set(LIBSTRACCIATELLA_TARGET_DIR "${CMAKE_BINARY_DIR}/rust")
set(LIBSTRACCIATELLA_LIBRARIES "${LIBSTRACCIATELLA_TARGET_DIR}/debug/libstracciatella.a" "dl" "gcc_s" PARENT_SCOPE)

add_custom_target(libstracciatella ALL
        ${CMAKE_COMMAND} -E env CARGO_TARGET_DIR=${LIBSTRACCIATELLA_TARGET_DIR} ${CARGO_EXECUTABLE} build
        WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
