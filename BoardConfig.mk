# Copyright (C) 2007 The Android Open Source Project
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

# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

LOCAL_PATH:= $(call my-dir)

TARGET_GLOBAL_CFLAGS += -mfpu=vfp -mfloat-abi=softfp -Os
TARGET_GLOBAL_CPPFLAGS += -mfpu=vfp -mfloat-abi=softfp -Os

## Kernel
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOOTLOADER_BOARD_NAME := cooper
BOARD_KERNEL_BASE := 0x13600000
BOARD_KERNEL_PAGESIZE := 4096
TARGET_PREBUILT_KERNEL := device/samsung/cooper/kernel
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_DOWNLOAD_MODE := true

## Platform
TARGET_BOARD_PLATFORM := msm7x27
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_SPECIFIC_HEADER_PATH := device/samsung/cooper/include
TARGET_DISABLE_ARM_PIE := true
BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true

## Webkit, browser
JS_ENGINE := v8
HTTP := chrome
ENABLE_WEBGL := true
TARGET_WEBKIT_USE_MORE_MEMORY := true

## JIT
WITH_JIT := true
ENABLE_JSC_JIT := true

## Camera
USE_CAMERA_STUB := false
BOARD_USE_FROYO_LIBCAMERA := true
COMMON_GLOBAL_CFLAGS += -DBOARD_USES_SAMSUNG_CAMERA

## Qualcomm, display
BOARD_USES_QCOM_HARDWARE := true
TARGET_NO_HW_VSYNC := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
USE_OPENGL_RENDERER := true
TARGET_USES_GENLOCK := true
BOARD_EGL_CFG := vendor/samsung/cooper/proprietary/lib/egl/egl.cfg

COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_ICS_COMPAT -DFORCE_CPU_UPLOAD
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK -DBINDER_COMPAT
#COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_PIXEL_FORMAT_YV12 -DMISSING_GRALLOC_BUFFERS -DUNABLE_TO_DEQUEUE -DMISSING_EGL_EXTERNAL_IMAGE

## GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := cooper
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240

## Other Qualcomm config
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_AUDIO_SPEECH := true

## Assert
TARGET_OTA_ASSERT_DEVICE := cooper,GT-S5830

## Bluetooth
BOARD_HAVE_SAMSUNG_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

## FM
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := brcm2049

## Wi-Fi
BOARD_WPA_SUPPLICANT_DRIVER := AR6000
WPA_SUPPLICANT_VERSION := VER_0_6_X
BOARD_WLAN_DEVICE := wlan0
WIFI_DRIVER_MODULE_PATH := /system/wifi/ar6000.ko
WIFI_DRIVER_MODULE_NAME := ar6000

## RIL
BOARD_USES_LEGACY_RIL := true
BOARD_FORCE_RILD_AS_ROOT := true
BOARD_MOBILEDATA_INTERFACE_NAME := "pdp0"

## UMS
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/usb_mass_storage/lun0/file
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"

## Touchscreen
BOARD_USE_LEGACY_TOUCHSCREEN := true

## Bootanimation
TARGET_BOOTANIMATION_USE_RGB565 := true
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

## Misc.
TARGET_NO_INITLOGO := true

## Recovery
BOARD_LDPI_RECOVERY := true
BOARD_HAS_DOWNLOAD_MODE := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 219938816
BOARD_USERDATAIMAGE_PARTITION_SIZE := 190054400
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_KERNEL_CMDLINE := 
BOARD_BML_BOOT := "/dev/block/bml8"
BOARD_BML_RECOVERY := "/dev/block/bml9"
BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_USE_CUSTOM_RECOVERY_FONT := "<font_7x16.h>"
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/cooper/recovery/graphics.c
TARGET_RECOVERY_INITRC := device/samsung/cooper/recovery/recovery.rc
TARGET_RECOVERY_FSTAB := device/samsung/cooper/recovery/recovery.fstab
