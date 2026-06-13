include("${CMAKE_SOURCE_DIR}/cmake/module/cache-var-mod/cache-var.cmake")

cache_list(
    CXX_COMPILER_FLAGS_WINDOWS_x86_64_DEBUG
    "Compiler configuration used for 'Windows x86_64 Debug' builds"
    /MDd
    -gcodeview
    -O0
    -Wall
    -Wextra
    -std=c++23)

cache_list(CXX_LINKER_FLAGS_WIN_x86_64_DEBUG
    "Linker configuration used for 'Windows x86_64 Debug' builds"
    /DEBUG:FULL
    /INCREMENTAL
    /OPT:NOREF
    /OPT:NOICF)




cache_list(
    CXX_COMPILER_FLAGS_WINDOWS_x86_64_RELEASE
    "Compiler configuration used for 'Windows x86_64 Release' builds"
    /MD
    /DNDEBUG
    -O2
    -Wall
    -Wextra
    -flto=full
    -std=c++23
)

cache_list(
    CXX_LINKER_FLAGS_WINDOWS_x86_64_RELEASE
    "Linker configuration used for 'Windows x86_64 Release' builds"
    /INCREMENTAL:NO
    /DEBUG:NONE
    "/lldltocache:${CMAKE_BINARY_DIR}/lldcache"
    /OPT:REF
    /OPT:ICF
    /OPT:LBR
    -flto=full
)
