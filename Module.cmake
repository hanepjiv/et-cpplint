# -*- mode:cmake; coding:utf-8-unix; -*-

##  @file Module.cmake
##  @brief Module.cmake
##
##  Module.cmake
##
##  Copyright 2014 hanepjiv
##
##  @author hanepjiv <hanepjiv@gmail.com>
##  @copyright The MIT License (MIT)
##  @since 2014/06/24
##  @date 2023/10/07

find_program(PYTHON python3)
if(NOT PYTHON)
  message(FATAL_ERROR "Test feature requires python.")
endif()

set(src "${CMAKE_SOURCE_DIR}/../et-cpplint/cpplint.sh.in")
set(target "${CMAKE_BINARY_DIR}/dependencies/et-cpplint/cpplint.sh")

message(STATUS "${PYTHON}")
configure_file(${src} ${target} @ONLY)
set(CPPLINT "${PYTHON} ${CMAKE_SOURCE_DIR}/../et-cpplint/cpplint.py")
set(CPPLINT_FLAGS "")
set(CPPLINT_SH /bin/env sh ${target})
