#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

#Inherit emulated_storage properties
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit userspace reboot properties
$(call inherit-product, $(SRC_TARGET_DIR)/product/userspace_reboot.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from Infinix-X6731 device
$(call inherit-product, device/infinix/X6731/device.mk)

PRODUCT_DEVICE := X6731
PRODUCT_NAME := twrp_X6731
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix Zero 30 5G
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_x6731u_h935-user 12 SP1A.210812.016 691257 release-keys"

BUILD_FINGERPRINT := Infinix/X6731-GL/Infinix-X6731:12/SP1A.210812.016/240829V442:user/release-keys
