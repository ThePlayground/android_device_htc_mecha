USE_CAMERA_STUB := true

# inherit from common msm7x30 device
-include device/htc/msm7x30-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/htc/mecha/BoardConfigVendor.mk

# bootloader board name
TARGET_BOOTLOADER_BOARD_NAME := mecha
BOARD_OVERLAY_MINIFICATION_LIMIT := 2

# Use stock libril for now
TARGET_PROVIDES_LIBRIL := vendor/htc/mecha/proprietary/libril.so
BOARD_MOBILEDATA_INTERFACE_NAME := "rmnet_sdio0"

# camera fix for mecha
BOARD_HAVE_HTC_FFC := true
# BOARD_USE_REVERSE_FFC := true

# gps fix for mecha
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := mecha
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# usb fix for mecha
TARGET_SPECIFIC_HEADER_PATH := device/htc/msm7x30-common/include
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/usb_mass_storage/lun0/file

# partition sizes
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 585101312
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1232072704
BOARD_BOOTIMAGE_PARTITION_SIZE := 4194304
BOARD_FLASH_BLOCK_SIZE := 262144

# kernel configuration
TARGET_KERNEL_SOURCE := kernel/htc/mecha
TARGET_KERNEL_CONFIG := mecha_defconfig
TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common
TARGET_PREBUILT_KERNEL := device/htc/mecha/kernel/kernel
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_KERNEL_CMDLINE := no_console_suspend=1
BOARD_KERNEL_BASE := 0x05200000
BOARD_PAGE_SIZE := 4096

# recovery and sdcard blocks
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_USES_MMCUTILS := true

