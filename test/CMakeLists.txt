include("CTest")
include("${CMAKE_SOURCE_DIR}/cmake/module/test-mod/fetch-gtest.cmake")
include("${CMAKE_SOURCE_DIR}/cmake/module/test-mod/gtest-for-clang-cl.cmake")
include("${CMAKE_SOURCE_DIR}/cmake/module/test-mod/define-unit-test.cmake")

set_property(GLOBAL PROPERTY GTEST_NO_WARNINGS ON)
fetch_gtest("v1.17.0")
gtest_for_clang_cl()

add_executable(buffer_test "buffer.test.cxx")
target_link_libraries(buffer_test PRIVATE gtest_main )