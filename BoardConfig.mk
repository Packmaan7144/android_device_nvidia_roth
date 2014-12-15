#
# Copyright (C) 2014 The CyanogenMod Project
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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/madcatz/mojo/include

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a15

# Board
TARGET_BOARD_PLATFORM := tegra
TARGET_BOOTLOADER_BOARD_NAME := mojo
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive
TARGET_KERNEL_SOURCE := kernel/madcatz/mojo
TARGET_KERNEL_CONFIG := cyanogenmod_mojo_defconfig

# Audio
BOARD_USES_ALSA_AUDIO := true
BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR ?= device/madcatz/mojo/bluetooth

# Camera
USE_CAMERA_STUB = true

# Graphics
BOARD_EGL_CFG := device/madcatz/mojo/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_HAVE_PIXEL_FORMAT_INFO := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

# Partition
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 20971520
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 805306368
BOARD_USERDATAIMAGE_PARTITION_SIZE := 14042529792
BOARD_FLASH_BLOCK_SIZE := 4096

# Pre-kitkat blob support
TARGET_RELEASE_CPPFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL

# Recovery
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_DEVICE_DIRS += device/madcatz/mojo
TARGET_RECOVERY_FSTAB := device/madcatz/mojo/rootdir/etc/fstab.mojo

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE                := bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_DRIVER_MODULE_NAME          := "bcmdhd"
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/bcmdhd.ko"
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcm43241/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_AP           := "/system/vendor/firmware/bcm43241/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_STA          := "/system/vendor/firmware/bcm43241/fw_bcmdhd.bin"

# SELINUX Defines
#BOARD_SEPOLICY_DIRS := \
#    device/madcatz/mojo/sepolicy

#BOARD_SEPOLICY_UNION := \
#    file_contexts \
#    app.te \
#    device.te \
#    drmserver.te \
#    init_shell.te \
#    file.te \
#    system.te \
#    zygote.te \
#    domain.te \
#    ueventd.te

MALLOC_IMPL := dlmalloc

# TWRP
DEVICE_RESOLUTION := 1920x1080
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TW_NO_SCREEN_TIMEOUT := true
TW_NO_CPU_TEMP := true
TW_EXCLUDE_MTP := true
