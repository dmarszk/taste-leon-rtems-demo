#!/bin/bash

# Setup environment
if [[ -z "${RTEMS_MAKEFILE_PATH}" ]]; then
  if [[ ! -z "${RTEMS_MAKEFILE_PATH_LEON}" ]]; then
    export RTEMS_MAKEFILE_PATH="${RTEMS_MAKEFILE_PATH_LEON}"
  else
    echo "Neither RTEMS_MAKEFILE_PATH_LEON nor RTEMS_MAKEFILE_PATH env var is set. Exiting..."
    exit 1
  fi
fi
# Build source-code libraries code

# Libraries built by GNU Make
make -C libs/ clean all install || exit 1

# Libraries built by WAF
(cd ./libs; ./waf configure clean build install || exit 1)
