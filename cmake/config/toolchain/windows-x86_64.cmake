# =========================================================
# Windows 11 (x86_64) Toolchain
# ==========================================================
set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# SYSTEM
set(CMAKE_SYSTEM_NAME Windows)
set(CMAKE_SYSTEM_PROCESSOR x86_64)

# GENERATOR
set(CMAKE_GENERATOR "Ninja")

# COMPILERS (must both be clang-cl)
set(CMAKE_C_COMPILER clang-cl)
set(CMAKE_C_COMPILER_TARGET "x86_64-pc-windows-msvc")
set(CMAKE_CXX_COMPILER clang-cl)
set(CMAKE_CXX_COMPILER_TARGET "x86_64-pc-windows-msvc") # TARGET TRIPLE (required for MSVC ABI)

# LINKER
set(CMAKE_LINKER "lld-link")

# DEBUG FLAGS
set(CMAKE_CXX_FLAGS_DEBUG "/Zi /Od /Ob0 /RTC1 /MDd /fp:precise /Zc:preprocessor /Zc:inline /W4")
set(CMAKE_C_FLAGS_DEBUG   "/Zi /Od /Ob0 /RTC1 /MDd /fp:precise /Zc:preprocessor /Zc:inline /W4")
set(CMAKE_EXE_LINKER_FLAGS_DEBUG "/DEBUG /INCREMENTAL /PDB:${CMAKE_BINARY_DIR}/MyProgram_d.pdb")
set(CMAKE_SHARED_LINKER_FLAGS_DEBUG "/DEBUG /INCREMENTAL /PDB:${CMAKE_BINARY_DIR}/MyLib_d.pdb")
