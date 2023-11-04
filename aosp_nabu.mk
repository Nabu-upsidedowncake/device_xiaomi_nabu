# Copyright (C) 2023 The LineageOS Project
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

# Inherit some common Awaken stuff.
# Inherit some common AOSP stuff.
# This makefile sets various target configurations for the nabu device.
# TARGET_FACE_UNLOCK_SUPPORTED is set to true to enable face unlock feature.
# TARGET_GAPPS_ARCH is set to arm64 to specify the architecture for Google Apps.
# TARGET_INCLUDE_LIVE_WALLPAPERS is set to true to include live wallpapers.
# TARGET_INCLUDE_STOCK_ARCORE is set to true to include stock ARCore.
# TARGET_SUPPORTS_GOOGLE_RECORDER is set to false to disable Google Recorder support.
# TARGET_SUPPORTS_QUICK_TAP is set to true to enable quick tap feature.
# TARGET_SUPPORTS_CALL_RECORDING is set to true to enable call recording feature.
# TARGET_USES_AOSP_RECOVERY is set to true to use AOSP recovery.
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_USES_AOSP_RECOVERY := true
$(call inherit-product, vendor/aosp/config/common_full_tablet_wifionly.mk)
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration for nabu.
$(call inherit-product, device/xiaomi/nabu/device.mk)

PRODUCT_NAME := aosp_nabu
PRODUCT_DEVICE := nabu
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Xiaomi Pad 5

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="nabu_global-user 12 SKQ1.220303.001 V13.1.4.0.SKXMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/nabu_global/nabu:12/RKQ1.200826.002/V13.1.4.0.SKXMIXM:user/release-keys
