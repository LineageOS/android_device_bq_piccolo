#
# Copyright (C) 2016 The CyanogenMod Project
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

-include device/bq/msm8916-common/BoardConfigCommon.mk

# Platform
TARGET_BOARD_PLATFORM_GPU := qcom-adreno405

# Kernel
TARGET_KERNEL_SOURCE := kernel/bq/msm8939
TARGET_KERNEL_CONFIG := cyanogenmod_piccolo_defconfig

# Assert
TARGET_OTA_ASSERT_DEVICE := aquarism5,piccolo,Aquaris_M5

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/bq/piccolo/bluetooth

# CMHW
BOARD_HARDWARE_CLASS += device/bq/piccolo/cmhw/src
TARGET_TAP_TO_WAKE_NODE := "/sys/devices/soc.0/78b9000.i2c/i2c-5/5-004a/en_gesture"

# Filesystem
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13013734522 # (BOARD_USERDATAIMAGE_PARTITION_SIZE - 16384 for crypto footer)

# Properties
TARGET_SYSTEM_PROP += device/bq/piccolo/system.prop

# SELinux
BOARD_SEPOLICY_DIRS += device/bq/piccolo/sepolicy

# Inherit from the proprietary version
-include vendor/bq/piccolo/BoardConfigVendor.mk
