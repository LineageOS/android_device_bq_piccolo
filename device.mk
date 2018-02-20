#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/mixer_paths_skuk.xml:system/etc/mixer_paths_skuk.xml \
    hardware/qcom/audio-caf/msm8916/configs/msm8916_32/sound_trigger_mixer_paths.xml:system/etc/sound_trigger_mixer_paths.xml \
    hardware/qcom/audio-caf/msm8916/configs/msm8916_32/sound_trigger_mixer_paths_wcd9306.xml:system/etc/sound_trigger_mixer_paths_wcd9306.xml \
    hardware/qcom/audio-caf/msm8916/configs/msm8916_32/sound_trigger_platform_info.xml:system/etc/sound_trigger_platform_info.xml

# Display
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/calib.cfg:system/etc/display/calib.cfg \

# IRQ balance
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/msm_irqbalance.conf:system/etc/msm_irqbalance.conf

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/atmel_mxt_ts_T100_touchscreen.kl:system/usr/keylayout/atmel_mxt_ts_T100_touchscreen.kl \
    $(LOCAL_PATH)/keylayout/Headset.kl:system/usr/keylayout/Headset.kl

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml

# NFC packages
PRODUCT_PACKAGES += \
    NfcNci \
    Tag \
    nfc_nci.bcm2079x.default

# NFC access control + feature files + configuration
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    $(LOCAL_PATH)/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/nfc/libnfc-brcm-20795a20.conf:system/etc/libnfc-brcm-20795a20.conf \
    $(LOCAL_PATH)/nfc/nfcee_access.xml:system/etc/nfcee_access.xml

# Permission
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml

# Qualcomm
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qcom.ad.calib.data=/data/misc/display/calib.cfg \
    ro.qcom.ad=1 \
    ro.qualcomm.cabl=2

# Ramdisk
PRODUCT_PACKAGES += \
    init.qcom.power.rc \
    init.target.rc

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine.conf:system/etc/thermal-engine.conf

# Touchscreen
PRODUCT_PACKAGES += \
    init.atmel_ts.sh
