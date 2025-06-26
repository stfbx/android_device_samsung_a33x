#
# Copyright (C) 2025 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := a33x

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit from the 64 bit configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

## Boot Animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_a33x
PRODUCT_DEVICE := a33x
PRODUCT_MODEL := SM-A336M
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_SHIPPING_API_LEVEL := 32

# Vendor fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint="samsung/a33xub/a33x:12/SP1A.210812.016/A336MUBSDEYD2:user/release-keys" \
    BuildDesc="a33xub-user 14 UP1A.231005.007 A336MUBSDEYD2 release-keys"

# Security patch
VENDOR_SECURITY_PATCH := 2025-04-01
