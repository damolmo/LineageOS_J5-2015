#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

DEVICES_J5="j53gxx j5lte j5ltechn j5nlte"

DEVICES_ALL="$DEVICES_J5"

# Load extract_utils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "${MY_DIR}" ]]; then MY_DIR="${PWD}"; fi

ANDROID_ROOT="${MY_DIR}/../../.."

HELPER="${ANDROID_ROOT}/tools/extract-utils/extract_utils.sh"
if [ ! -f "${HELPER}" ]; then
    echo "Unable to find helper script at ${HELPER}"
    exit 1
fi
source "${HELPER}"

# Initialize the helper for common
setup_vendor "${DEVICE_COMMON}" "${VENDOR}" "${ANDROID_ROOT}" true

# Warning headers and guards
write_headers "${DEVICES_ALL}"

# The standard common blobs
write_makefiles "${MY_DIR}/proprietary-files.txt" true

# Finish
write_footers

if [ -s "${MY_DIR}/../${DEVICE_SPECIFIED_COMMON}/proprietary-files.txt" ]; then
    DEVICE_COMMON="${DEVICE_SPECIFIED_COMMON}"

    # Reinitialize the helper for device specified common
    setup_vendor "${DEVICE_SPECIFIED_COMMON}" "${VENDOR}" "${ANDROID_ROOT}" true

    # Warning headers and guards
    write_headers "${DEVICE_SPECIFIED_COMMON_DEVICE}"

    # The standard device specified common blobs
    write_makefiles "${MY_DIR}/../${DEVICE_SPECIFIED_COMMON}/proprietary-files.txt" true

    # Finish
    write_footers

    DEVICE_COMMON="msm8916-common"
fi

if [ -s "${MY_DIR}/../${DEVICE}/proprietary-files.txt" ]; then
    # Reinitialize the helper for device
    setup_vendor "${DEVICE}" "${VENDOR}" "${ANDROID_ROOT}" false

    # Warning headers and guards
    write_headers

    # The standard device blobs
    write_makefiles "${MY_DIR}/../${DEVICE}/proprietary-files.txt" true

    # Finish
    write_footers
fi
