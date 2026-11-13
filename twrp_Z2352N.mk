#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
DEVICE_PATH := device/nubia/Z2352N
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

$(call inherit-product-if-exists, vendor/twrp/config/common.mk)

# Inherit some common pb stuff.
$(call inherit-product-if-exists, vendor/pb/config/common.mk)

# Inherit from RMX3261 device
$(call inherit-product, device/nubia/Z2352N/device.mk)

PRODUCT_DEVICE := Z2352N
PRODUCT_NAME := twrp_Z2352N
PRODUCT_BRAND := nubia
PRODUCT_MODEL := Z2352N
PRODUCT_MANUFACTURER := nubia

PRODUCT_GMS_CLIENTID_BASE := android-nubia