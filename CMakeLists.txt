
cmake_minimum_required(VERSION 3.4)
project(lab05)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)


include_directories(banking)

add_library(lab05 STATIC banking/Account.cpp banking/Transaction.cpp)

if(BUILD_TESTS)
    enable_testing()
    add_subdirectory(third-party/gtest)
    file(GLOB ${PROJECT_NAME}_TEST_SOURCES tests/*.cpp)
    add_executable(check ${${PROJECT_NAME}_TEST_SOURCES})
    target_link_libraries(check ${PROJECT_NAME} gtest_main gmock)
    add_test(NAME check COMMAND check)
endif()
