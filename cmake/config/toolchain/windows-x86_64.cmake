# =========================================================
# Windows 11 (x86_64) ==> Ninja + clang-cl + lld-link + MSVC STL
# ==========================================================
set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# SETTING ENVIRONMENT
set(CMAKE_SYSTEM_NAME Windows)
set(CMAKE_SYSTEM_PROCESSOR x86_64)
set(CMAKE_C_COMPILER_TARGET "x86_64-pc-windows-msvc")
set(CMAKE_CXX_COMPILER_TARGET "x86_64-pc-windows-msvc")

# SETTING GENERATOR/BUILD SYSTEM
set(CMAKE_GENERATOR "Ninja")

# SETTING COMPILER
set(CMAKE_C_COMPILER clang-cl) #        C compiler
set(CMAKE_CXX_COMPILER clang-cl) #      C++ compiler

# SETTING LINKER
set(CMAKE_LINKER "lld-link") #          LLVM linker (lld-link) for MSVC targets
