#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from mojito device
$(call inherit-product, device/xiaomi/mojito/device.mk)

# Inherit some LineageOS stuffs
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Some Build Flags
TARGET_ENABLE_BLUR := false
# Axion Stuff
AXION_CAMERA_REAR_INFO := 48,8,2,2
AXION_CAMERA_FRONT_INFO := 13
AXION_MAINTAINER := Zeyy
AXION_PROCESSOR := Snapdragon_678
TARGET_IS_LOW_RAM := true
TARGET_INCLUDES_LOS_PREBUILTS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_mojito
PRODUCT_DEVICE := mojito
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 10
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
