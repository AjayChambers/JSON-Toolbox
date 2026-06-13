# ==========================================
# Linux (x86_64)
# clang++ + lld + libc++ + Ninja
# ==========================================

set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR x86_64)

# --- Compilers ---
set(CMAKE_C_COMPILER clang)
set(CMAKE_CXX_COMPILER clang++)

# --- Linker ---
set(CMAKE_LINKER lld)
add_link_options(-fuse-ld=lld)

# --- Language Standard ---
set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# --- libc++ instead of libstdc++ ---
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libc++")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -stdlib=libc++")
set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} -stdlib=libc++")

# --- Target triple ---
set(CMAKE_C_COMPILER_TARGET x86_64-linux-gnu)
set(CMAKE_CXX_COMPILER_TARGET x86_64-linux-gnu)

# --- Modules (optional) ---
# set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fmodules-ts")
