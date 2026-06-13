include("${CMAKE_SOURCE_DIR}/cmake/module/cache-var-mod/cache-var.cmake")




#-------------------------------------------#
# CACHED STRING VARIABLES
#-------------------------------------------#
cache_var(
    PROJ_NAME
    "JSON Toolbox"
    "This project's name"
    FORCE)

cache_var(
    PROJ_DESC
    "Project description"
    "Project description"
    FORCE)

cache_var(
    PROJ_VER
    "0.1.0"
    "Current build's version number"
    "")




#-------------------------------------------#
# CACHED DIRECTORY PATHS
#-------------------------------------------#
cache_path(
    ROOTDIR__
    "${CMAKE_SOURCE_DIR}"
    "The project's root directory (same as using \"\${CMAKE_SOURCE_DIR}\")."
    FORCE)

cache_path(
    INCLUDE_DIR__
    "${CMAKE_SOURCE_DIR}/include"
    "Public include directory (Public interfaces)"
    FORCE)

cache_path(
    SOURCE_DIR__
    "${CMAKE_SOURCE_DIR}/source"
    "Project source directory"
    FORCE)

cache_path(
    TEST_DIR__
    "${CMAKE_SOURCE_DIR}/test"
    "Directory where unit test source files are located"
    FORCE)

cache_path(
    MODULE_DIR__
    "${CMAKE_SOURCE_DIR}/cmake/modules"
    "CMake modules directory"
    FORCE)


#-------------------------------------------#
# Debug build Variables
#-------------------------------------------#
cache_path(
    DEBUG_BUILD_DIR__
    "${CMAKE_BINARY_DIR}/Debug"
    "Debug build directory"
    FORCE)

cache_path(
    DEBUG_RUNTIME_DIR__
    "${CMAKE_BINARY_DIR}/Debug/bin"
    "Debug runtime directory: Where 'Debug' binary executables are built & stored"
    FORCE)


cache_path(
    DEBUG_LIB_DIR__
    "${CMAKE_BINARY_DIR}/Debug/lib"
    "Debug library directory: Where 'Debug' static & dynamic libraries are built & stored"
    FORCE)


#-------------------------------------------#
# Release build Variables
#-------------------------------------------#
cache_path(
    RELEASE_BUILD_DIR__
    "${CMAKE_BINARY_DIR}/Release"
    "Release build directory"
    FORCE)

cache_path(
    RELEASE_RUNTIME_DIR__
    "${CMAKE_BINARY_DIR}/Release/bin"
    "Release runtime directory: Where 'Release' binary executables are built & stored"
    FORCE)

cache_path(
    RELEASE_LIB_DIR__
    "${CMAKE_BINARY_DIR}/Release/lib"
    "Release library directory: Where 'Release' static & dynamic libraries are built & stored"
    FORCE)
