# Copyright (C) 2009 The Android Open Source Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# inherit from common msm7x30 device
-include device/htc/msm7x30-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/htc/mecha/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := mecha

# Use stock libril for now
TARGET_PROVIDES_LIBRIL := vendor/htc/mecha/proprietary/libril-qc-1.so
BOARD_MOBILEDATA_INTERFACE_NAME := "rmnet_sdio0"
BOARD_HAS_EXTRA_SYS_PROPS := true
USE_IPV6_ROUTE := true

# Additional Camera hacks for mecha
BOARD_HAVE_HTC_FFC := true
BOARD_USE_REVERSE_FFC := true

ifndef TARGET_DZO_CAMERA
-include device/htc/mecha/camera/mecha-sense.mk
else
-include device/htc/mecha/camera/mecha-aosp.mk
endif

# GPS Defines
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := mecha
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 585101312
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1232072704
BOARD_BOOTIMAGE_PARTITION_SIZE := 4194304
BOARD_FLASH_BLOCK_SIZE := 262144

# TARGET_SPECIFIC_HEADER_PATH := device/htc/mecha/include
TARGET_SPECIFIC_HEADER_PATH := device/htc/msm7x30-common/include

TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common
TARGET_PREBUILT_KERNEL := device/htc/mecha/kernel/kernel
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_KERNEL_CMDLINE := no_console_suspend=1
BOARD_KERNEL_BASE := 0x05200000
BOARD_PAGE_SIZE := 4096

BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/htc/mecha/recovery_ui.c
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_USES_MMCUTILS := true
