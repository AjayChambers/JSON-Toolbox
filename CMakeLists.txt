#================================================================
# JSON Toolbox "Collection of JSON Tools w/ CLI Interface"
# Copyright (C) 2026 Andrew Jay Chambers
#
#   Licensed under the GNU General Public License v3.0. To view
#   a copy of the license (@see "LICENSE.md") in this project's
#   root directory or visit <"https://www.gnu.org/licenses/">.
#
# REPOSITORY: "https://GitHub.com/AjayChambers/J-Tool"
# ISSUE/BUG:  "https://GitHub.com/AjayChambers/J-Tool/issues"
# CONTACT:    "Ajay.Chambers@Outlook.com"
#================================================================
# FILE'S META DETAILS
#   FILENAME:  "CMakeLists.txt"
#   AUTHOR(s): "Ajay Chambers"
#   FILE DESC:
#     "This file is the initial script that CMake runs when
#     J-TOOL is built. It's responsible for defining the project,
#     calling the first level of subdirectory's CMakeLists.txt
#     files. It also includes the 'CMakeGlobals.cmake' script
#     which contains a set of global variables that can be used
#     throughout the entire project."
#================================================================
CMAKE_MINIMUM_REQUIRED(VERSION 4.3.2)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)


list(PREPEND CMAKE_MODULE_PATH
    ${CMAKE_SOURCE_DIRECTORY}/cmake/module/
    ${CMAKE_SOURCE_DIRECTORY}/cmake/module/log-mod
    ${CMAKE_SOURCE_DIRECTORY}/cmake/module/cache-var-mod
    ${CMAKE_SOURCE_DIRECTORY}/cmake/config)

# include("${CMAKE_SOURCE_DIR}/cmake/config/compiler.config.cmake")
include("${CMAKE_SOURCE_DIR}/cmake/config/project.config.cmake")

project(
    ${PROJ_NAME}
    VERSION ${PROJ_VER}
    DESCRIPTION ${PROJ_DESC}
    LANGUAGES CXX)

if(CMAKE_BUILD_TYPE STREQUAL "Debug")
    add_compile_options(
        -g
        -O0
        -fno-inline
        -fno-omit-frame-pointer
        -Wall
        -Wextra
        -Wpedantic
        -Wdeprecated
        -Wno-unused-parameter
        -std=c++23)
endif()


include_directories(
    "${CMAKE_SOURCE_DIR}/include"
    "${CMAKE_SOURCE_DIR}/source/lib/buffer/include"
    "${CMAKE_SOURCE_DIR}/source/lib/text-file/include")

add_subdirectory("source")




if(CMAKE_BUILD_TYPE STREQUAL "Debug")
  add_subdirectory(test)
endif()
