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
##  @date 2023/09/30

find_program(PYTHON python3)
if(NOT PYTHON)
  message(FATAL_ERROR "Test feature requires python.")
endif()
message(STATUS "${PYTHON}")
configure_file(${abs_top_srcdir}/tools/et-cpplint/cpplint.sh.in
  tools/et-cpplint/cpplint.sh @ONLY)
set(CPPLINT "${PYTHON} ${abs_top_srcdir}/tools/et-cpplint/cpplint.py")
set(CPPLINT_FLAGS "")
set(CPPLINT_SH /bin/env sh ${CMAKE_CURRENT_BINARY_DIR}/tools/et-cpplint/cpplint.sh)
