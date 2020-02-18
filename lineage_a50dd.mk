#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a50 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := a50dd
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_a50dd
PRODUCT_MODEL := SM-A505

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := a50dd
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="a50xx-user 9 PPR1.180610.011 A505FNXXS3ASL1 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/a50xx/a50:9/PPR1.180610.011/A505FNXXS3ASL1:user/release-keys
