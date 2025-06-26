#
# Copyright (C) 2022 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/samsung/a33x

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio.effect@7.0-impl:32 \
    android.hardware.audio@7.0-impl:32 \
    android.hardware.audio.service \
    android.hardware.bluetooth.audio-impl \
    audio.bluetooth.default \
    audio.r_submix.default \
    audio.usb.default

# Dolby
PRODUCT_PACKAGES += \
    SamsungDAP

# Doze
PRODUCT_PACKAGES += \
    SamsungDoze

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl:64 \
    android.hardware.bluetooth@1.0-service \
    libbt-vendor:64

PRODUCT_COPY_FILES += \
    hardware/samsung_slsi/libbt/conf/bt_did.conf:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth/bt_did.conf \
    hardware/samsung_slsi/libbt/conf/bt_vendor.conf:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth/bt_vendor.conf

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider-service.samsung \
    libGrallocMapperCamera

# Charger
PRODUCT_PACKAGES += \
    charger_res_images_vendor

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint-service.samsung

# VIB
PRODUCT_PACKAGES += \
    android.hardware.vibrator-service.samsung

# fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# FastCharge
PRODUCT_PACKAGES += \
    vendor.lineage.fastcharge@1.0-service.samsung

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl:64 \
    android.hardware.gatekeeper@1.0-service

# Permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/permissions/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.audio.pro.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.pro.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.nfc.ese.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.ese.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hcef.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.nfc.uicc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.uicc.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.camera.ar.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.ar.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.camera.autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.autofocus.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.raw.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.camera.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.sensor.hifi_sensors.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.hifi_sensors.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.compass.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.sensor.stepcounter.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepcounter.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.sensor.stepdetector.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepdetector.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.vulkan.compute-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.compute.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.vulkan.level-1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.vulkan.version-1_1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.wifi.passpoint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.passpoint.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    $(LOCAL_PATH)/configs/permissions/android.software.app_widgets.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.app_widgets.xml \
    $(LOCAL_PATH)/configs/permissions/android.software.device_id_attestation.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.device_id_attestation.xml \
    $(LOCAL_PATH)/configs/permissions/android.software.freeform_window_management.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.freeform_window_management.xml \
    $(LOCAL_PATH)/configs/permissions/android.software.ipsec_tunnels.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.ipsec_tunnels.xml \
    $(LOCAL_PATH)/configs/permissions/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml \
    $(LOCAL_PATH)/configs/permissions/android.software.opengles.deqp.level-2020-03-01.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.opengles.deqp.level.xml \
    $(LOCAL_PATH)/configs/permissions/android.software.picture_in_picture.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.picture_in_picture.xml \
    $(LOCAL_PATH)/configs/permissions/android.software.sip.voip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.voip.xml \
    $(LOCAL_PATH)/configs/permissions/android.software.vulkan.deqp.level-2020-03-01.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.vulkan.deqp.level.xml \
    $(LOCAL_PATH)/configs/permissions/com.nxp.mifare.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.nxp.mifare.xml \
    $(LOCAL_PATH)/configs/permissions/com.android.nfc_extras.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.android.nfc_extras.xml \
    $(LOCAL_PATH)/configs/permissions/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml


# Graphics
# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := 280dpi
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

# HIDL
PRODUCT_PACKAGES += \
    libhwbinder \
    libhwbinder.vendor

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    hardware/google/interfaces \
    hardware/google/pixel \
    hardware/samsung \
    hardware/samsung_slsi/libbt \
    hardware/samsung_slsi-linaro/exynos/gralloc/gralloc3 \
    hardware/samsung_slsi-linaro/exynos/cpboot_v3

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb-service.samsung \
    android.hardware.usb.gadget-service.samsung

# init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/init/fstab.s5e8825:$(TARGET_COPY_OUT_RAMDISK)/fstab.s5e8825 \
    $(LOCAL_PATH)/configs/init/fstab.s5e8825:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.s5e8825 \
    $(LOCAL_PATH)/configs/init/init.s5e8825.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.s5e8825.rc \
    $(LOCAL_PATH)/configs/init/init.s5e8825.usb.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.s5e8825.usb.rc \
    $(LOCAL_PATH)/configs/init/ueventd.rc:$(TARGET_COPY_OUT_VENDOR)/etc/ueventd.rc

# WiFi
PRODUCT_PACKAGES += \
    WifiOverlay \
    android.hardware.wifi-service \
    hostapd \
    wpa_supplicant

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf

PRODUCT_CFI_INCLUDE_PATHS += hardware/samsung_slsi/scsc_wifibt/wpa_supplicant_lib
