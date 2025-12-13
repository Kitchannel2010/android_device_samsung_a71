#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 intelgigabyte9299's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
LOCAL_PATH := $(call my-dir)

PRODUCT_RELEASE_NAME := a71
DEVICE_PATH := device/samsung/a71

$(call inherit-product-if-exists, $(DEVICE_PATH)/fox_$(PRODUCT_RELEASE_NAME).mk)


# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from a71 device
$(call inherit-product, device/samsung/a71/device.mk)

PRODUCT_DEVICE := a71
PRODUCT_NAME := twrp_a71
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A715F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a71naxx-user 11 RP1A.200720.012 A715FXXSBDXB1 release-keys"

BUILD_FINGERPRINT := samsung/a71naxx/a71:11/RP1A.200720.012/A715FXXSBDXB1:user/release-keys
