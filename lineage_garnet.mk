#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from garnet device
$(call inherit-product, device/xiaomi/garnet/device.mk)

# MiuiCamera
$(call inherit-product-if-exists, vendor/xiaomi/garnet-miuicamera/products/miuicamera.mk)
$(call inherit-product, vendor/xiaomi/garnet-miuicamera/products/board.mk)

# Set res to remove warning
TARGET_BOOT_ANIMATION_RES := 1080

# UDFPS Flags
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true

# Extra Flags
TARGET_DISABLE_EPPE := true
TARGET_SUPPORTS_QUICK_TAP := true

# Matrixx flags
MATRIXX_BUILD_TYPE := Official
MATRIXX_CHIPSET := SM7435-AB
MATRIXX_BATTERY := 5100 mAh
MATRIXX_DISPLAY := 1220x2712
MATRIXX_MAINTAINER := GameNCode

PRODUCT_NAME := lineage_garnet
PRODUCT_DEVICE := garnet
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 2312DRA50G

PRODUCT_SYSTEM_NAME := garnet_global
PRODUCT_SYSTEM_DEVICE := garnet

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="garnet_global-user 15 AQ3A.240912.001 OS2.0.6.0.VNRMIXM release-keys" \
    BuildFingerprint=Redmi/garnet_global/garnet:15/AQ3A.240912.001/OS2.0.6.0.VNRMIXM:user/release-keys \
    DeviceName=garnet \
    DeviceProduct=garnet_global

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
