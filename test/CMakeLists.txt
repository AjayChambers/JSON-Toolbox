Include("CTest")
Include(FetchContent)

FetchContent_Declare(
  Catch2
  GIT_REPOSITORY https://github.com/catchorg/Catch2.git
  GIT_TAG        v3.15.0) # or a later release

FetchContent_MakeAvailable(Catch2)


add_executable(test_buffer "buffer.test.cxx")
target_link_libraries(test_buffer PRIVATE "buffer;Catch2::Catch2WithMain")

set_target_properties(
    test_buffer
    PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/test/bin"
    OUTPUT_NAME              "TestBuffer")