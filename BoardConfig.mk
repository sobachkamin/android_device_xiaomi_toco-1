#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

BOARD_VENDOR := xiaomi

BUILD_BROKEN_PREBUILT_ELF_FILES := true
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_USES_BUILD_COPY_HEADERS := true

DEVICE_PATH := device/xiaomi/toco
TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# Compile libhwui in performance mode
HWUI_COMPILE_FOR_PERF := true

# Use Snapdragon LLVM, if available
TARGET_USE_SDCLANG := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a76

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a76

TARGET_USES_64_BIT_BINDER := true

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-hidl"

# Assert
TARGET_OTA_ASSERT_DEVICE := toco
TARGET_NO_BOOTLOADER := true

# Bootloader
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM := sm6150
TARGET_BOOTLOADER_BOARD_NAME := sm6150

# APEX
DEXPREOPT_GENERATE_APEX_IMAGE := true

# Audio
AUDIO_FEATURE_ENABLED_AAC_ADTS_OFFLOAD := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
AUDIO_FEATURE_ENABLED_HDMI_SPK := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
USE_CUSTOM_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1

# Battery
BOARD_GLOBAL_CFLAGS += -DBATTERY_REAL_INFO
HEALTHD_USE_BATTERY_INFO := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include
TARGET_FWK_SUPPORTS_FULL_VALUEADDS := true
TARGET_USE_QTI_BT_STACK := true

# Camera
TARGET_USES_QTI_CAMERA_DEVICE := true
TARGET_CAMERA_BOOTTIME_TIMESTAMP := true

# Display
TARGET_USES_HWC2 := true
TARGET_HAS_HDR_DISPLAY := true
TARGET_SCREEN_DENSITY := 440

# DRM
TARGET_ENABLE_MEDIADRM_64 := true

# Filesystem
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/configs/config.fs

# FM
BOARD_HAS_QCA_FM_SOC := "cherokee"
BOARD_HAVE_QCOM_FM := true

# FOD
TARGET_SURFACEFLINGER_FOD_LIB := //$(DEVICE_PATH):libfod_extension.toco
TARGET_USES_FOD_ZPOS := true

# HIDL
DEVICE_FRAMEWORK_MANIFEST_FILE := $(DEVICE_PATH)/framework_manifest.xml

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_toco
TARGET_RECOVERY_DEVICE_MODULES := libinit_toco

# Kernel
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_SECOND_OFFSET := 0x00f00000
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200n8 earlycon=msm_geni_serial,0x880000 androidboot.hardware=qcom androidboot.console=ttyMSM0 androidboot.memcg=1 lpm_levels.sleep_disabled=1 video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 service_locator.enable=1 swiotlb=1 loop.max_part=7 androidboot.usbcontroller=a600000.dwc3
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_CMDLINE += androidboot.init_fatal_reboot_target=recovery
TARGET_KERNEL_ARCH := arm64
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --second_offset $(BOARD_KERNEL_SECOND_OFFSET)
BOARD_MKBOOTIMG_ARGS += --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE) --board ""
ifeq ($(TARGET_PREBUILT_KERNEL),)
  TARGET_KERNEL_CONFIG := toco_defconfig
  TARGET_KERNEL_CLANG_COMPILE := true
  TARGET_KERNEL_SOURCE := kernel/xiaomi/toco
endif

# Partitions
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_BOOTIMAGE_PARTITION_SIZE := 134217728
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 134217728
BOARD_DTBOIMG_PARTITION_SIZE := 33554432
BOARD_USERDATAIMAGE_PARTITION_SIZE := 114934394880
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 402653184
BOARD_SUPER_PARTITION_SIZE := 9126805504
BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := system product
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 9122611200
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_SYSTEMIMAGE_EXTFS_INODE_COUNT := 16384
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_PARTITION_SIZE := 2415919104
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product
BUILD_WITHOUT_VENDOR := true
BOARD_USES_PRODUCTIMAGE := true
BOARD_USES_METADATA_PARTITION := true

# Power
TARGET_OVERLAYS_POWERHAL := true
TARGET_USES_NON_LEGACY_POWER := true
TARGET_USES_INTERACTION_BOOST := true
TARGET_TAP_TO_WAKE_NODE := "/dev/input/event4"

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Recovery
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_USES_RECOVERY_AS_BOOT := false
TARGET_NO_RECOVERY := false
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USES_MKE2FS := true

# RenderScript
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

# Sepolicy
SELINUX_IGNORE_NEVERALLOWS := true
SELINUX_IGNORE_NEVERALLOWS_ON_USER := true
BOARD_PLAT_PRIVATE_SEPOLICY_DIR := $(DEVICE_PATH)/sepolicy/private
BOARD_PLAT_PUBLIC_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/public

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/qcom/sepolicy/generic/private \
    device/qcom/sepolicy/qva/private

BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
    device/qcom/sepolicy/generic/public \
    device/qcom/sepolicy/generic/public/attribute \
    device/qcom/sepolicy/qva/public \
    device/qcom/sepolicy/qva/public/attribute

PRODUCT_PUBLIC_SEPOLICY_DIRS += \
    device/qcom/sepolicy/generic/product/public \
    device/qcom/sepolicy/qva/product/public

PRODUCT_PRIVATE_SEPOLICY_DIRS += \
    device/qcom/sepolicy/generic/product/private \
    device/qcom/sepolicy/qva/product/private

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# system_as_root
BOARD_SUPPRESS_SECURE_ERASE := true

# RIL
TARGET_PROVIDES_QTI_TELEPHONY_JAR := true

# Treble
BOARD_VNDK_VERSION := current

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flag 2
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

# Inherit from the proprietary version
-include vendor/xiaomi/toco/BoardConfigVendor.mk
