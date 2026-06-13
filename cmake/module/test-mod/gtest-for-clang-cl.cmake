set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
set(gtest_disable_pthreads ON CACHE BOOL "" FORCE)
set(gtest_build_tests OFF CACHE BOOL "" FORCE)

function(gtest_for_clang_cl)
    foreach(TARGET_ gtest gtest_main gmock gmock_main)
        if(TARGET ${TARGET_})
            target_compile_options(${TARGET_}
                PRIVATE
                    -Wno-character-conversion
                    -Wno-deprecated-declarations
                    -Wno-unused-parameter
                    -Wno-language-extension-token)
        endif()
    endforeach()
endfunction()