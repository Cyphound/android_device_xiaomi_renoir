#
# Copyright (C) 2021 The evolutionOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from renoir device
$(call inherit-product, device/xiaomi/renoir/device.mk)

# Inherit some common PixelOS stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# PixelOS flags
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true

# Device specific stuff
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := renoir
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Mi 11 Lite 5G
PRODUCT_NAME := aosp_renoir
PRODUCT_SYSTEM_NAME := renoir_global
PRODUCT_SYSTEM_DEVICE := renoir

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="renoir-user 13 RKQ1.211001.001 V14.0.6.0.TKICNXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Xiaomi/renoir/renoir:13/RKQ1.211001.001/V14.0.6.0.TKICNXM:user/release-keys

TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi