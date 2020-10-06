#!/bin/bash
set -e

BUILD_DIR=./build
TARGET_DIR=${BUILD_DIR}/null

lucky charm build

# Remove build / push scripts from build dir
rm -f "${TARGET_DIR}/build_charm.sh"
rm -f "${TARGET_DIR}/push_charm.sh"
