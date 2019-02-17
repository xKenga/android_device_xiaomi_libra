-include device/xiaomi/msm8994-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/libra

# Platform
TARGET_BOARD_PLATFORM := msm8992
TARGET_BOOTLOADER_BOARD_NAME := msm8992

# Arch
TARGET_CPU_VARIANT := cortex-a53
# Kernel
TARGET_KERNEL_CONFIG := libra_user_defconfig

# Partition
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2013265920
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12469648896

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# dt2w
TARGET_TAP_TO_WAKE_NODE := "/proc/touchscreen/double_tap_enable"

# Key disabler
JAVA_SOURCE_OVERLAYS := org.pixelexperience.keydisabler|$(DEVICE_PATH)/keydisabler|**/*.java

# Assertions
TARGET_BOARD_INFO_FILE ?= $(DEVICE_PATH)/board-info.txt
TARGET_OTA_ASSERT_DEVICE := 4C,libra

# Shims
TARGET_LD_SHIM_LIBS += \
    /system/vendor/lib/hw/camera.vendor.msm8992.so|libshim_camera.so

# Inherit from the proprietary version
-include vendor/xiaomi/libra/BoardConfigVendor.mk
