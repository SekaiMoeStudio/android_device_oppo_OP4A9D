#
# Copyright (C) 2020 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_PIXEL_CHARGER := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_EXCLUDES_AUDIOFX := true

# Inherit from device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_OP4A9D
PRODUCT_DEVICE := OP4A9D
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := PCRM00
PRODUCT_MANUFACTURER := OPPO

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="OPPO Reno3 Pro 5G" \
    TARGET_PROD="OPPO Reno3 Pro 5G" \
    PRIVATE_BUILD_DESC="OPPO Reno3 Pro 5G-user 12/RKQ1.200903.002/1640347520724:user/release-keys"

BUILD_FINGERPRINT := OPPO/PCRM00/OP4A9D:12/RKQ1.200903.002/1640347520724:user/release-keys
