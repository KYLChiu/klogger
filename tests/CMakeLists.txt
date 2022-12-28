include(FetchContent)

FetchContent_Declare(
  googletest
  GIT_REPOSITORY https://github.com/google/googletest.git
  GIT_TAG        release-1.11.0
)
FetchContent_MakeAvailable(googletest)
add_library(GTest::GTest INTERFACE IMPORTED)
target_link_libraries(GTest::GTest INTERFACE gtest_main)

add_executable(logger_test logger_test.cpp)
target_link_libraries(logger_test
 PRIVATE
  GTest::GTest
  klogger)
target_include_directories(logger_test PUBLIC src)