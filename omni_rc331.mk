#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from rc331 device
$(call inherit-product, device/dji/rc331/device.mk)

PRODUCT_DEVICE := rc331
PRODUCT_NAME := omni_rc331
PRODUCT_BRAND := DJI
PRODUCT_MODEL := DJI RC 2
PRODUCT_MANUFACTURER := dji

PRODUCT_GMS_CLIENTID_BASE := android-dji

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rc331-user 11 V02.00.00.29 2000029 test-keys"

BUILD_FINGERPRINT := DJI/rc331/rc331:11/V02.00.00.29/2000029:user/test-keys
