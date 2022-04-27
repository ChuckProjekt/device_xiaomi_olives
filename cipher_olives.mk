#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Set Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 28

#
# All components inherited here go to system_ext image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)

# Inherit some common CipherOS stuff.
$(call inherit-product, vendor/cipher/config/common_full_phone.mk)
TARGET_FACE_UNLOCK_SUPPORTED := true
CIPHER_MAINTAINER := ChuckDXD

# Inherit from olives device
$(call inherit-product, device/xiaomi/olives/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := olives
PRODUCT_NAME := cipher_olives
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 8 / 8A / 8A Dual
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi