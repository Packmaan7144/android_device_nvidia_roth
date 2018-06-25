#
# Copyright (C) 2015 The CyanogenMod Project
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

TARGET_SPECIFIC_HEADER_PATH := device/nvidia/roth/include

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a15

# Assert
TARGET_OTA_ASSERT_DEVICE := roth

# Board
TARGET_BOARD_PLATFORM := tegra
TARGET_TEGRA_VERSION := t114
TARGET_TEGRA_FAMILY := t11x
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Audio
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/nvidia/s8515
TARGET_KERNEL_CONFIG := tegra_s8515_cyanogenmod_defconfig

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR ?= device/nvidia/s8515/bluetooth

# Graphics
USE_OPENGL_RENDERER := true
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 5000000
VSYNC_EVENT_PHASE_OFFSET_NS := 7500000

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

# Media
COMMON_GLOBAL_CFLAGS += -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_USERDATAIMAGE_PARTITION_SIZE  := 2145386496
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 805306368
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_HAS_LARGE_FILESYSTEM := true

# PowerHAL
TARGET_POWERHAL_VARIANT := tegra


# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE                := bcmdhd
BOARD_WLAN_DEVICE_REV            := bcm4330_b2
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/vendor/firmware/bcm43241/fw_bcmdhd.bin"
WIFI_DRIVER_MODULE_ARG           := "iface_name=wlan0"
WIFI_DRIVER_MODULE_NAME          := "bcmdhd"

BOARD_HARDWARE_CLASS := device/nvidia/s8515/cmhw/

MALLOC_IMPL := dlmalloc

BOARD_SEPOLICY_DIRS := device/nvidia/s81515/sepolicy/
BOARD_SEPOLICY_UNION := \
        bootanim.te \
        btmacwriter.te \
        comms.te \
        cpuvoltcap.te \
        device.te \
        domain.te \
        drmserver.te \
        file_contexts \
        file.te \
        genfs_contexts \
        gpsd.te \
        init.te \
        installd.te \
        jscheck.te \
        mediaserver.te \
        netd.te \
        nvlogd.te \
        platform_app.te \
        powerserv.te \
        property_contexts \
        property.te \
        raydium.te \
        recovery.te \
        sdcardd.te \
        service.te \
        servicemanager.te \
        service_contexts \
        set_hwui.te \
        setup_fs.te \
        shell.te \
        surfaceflinger.te \
        system_app.te \
        system_server.te \
        te_macros \
        tee.te \
        touch.te \
        ueventd.te \
        untrusted_app.te \
        wl18xx.te \
        vold.te \
        zygote.te

# Vendor Init
TARGET_INIT_VENDOR_LIB := libinit_roth
TARGET_LIBINIT_DEFINES_FILE := device/nvidia/s8515/init/init_roth.c

