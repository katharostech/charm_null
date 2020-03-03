#!/bin/bash
set -e

BUILD_DIR=./build
TARGET_DIR=${BUILD_DIR}/charm_null

# Make sure target dir exists
mkdir -p ${TARGET_DIR}

# Clean the target dir if it has stuff in it
rm -rf ${TARGET_DIR}/*

# Copy files to build dir
ls | grep -v "sh" | grep -v "build" | xargs cp -rt ${TARGET_DIR}

echo "Charm built at: ${TARGET_DIR}"
