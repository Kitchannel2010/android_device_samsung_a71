#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 intelgigabyte9299's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
LOCAL_DIR := $(call my-dir)

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/twrp_a71.mk

COMMON_LUNCH_CHOICES := \
    twrp_a71-eng
