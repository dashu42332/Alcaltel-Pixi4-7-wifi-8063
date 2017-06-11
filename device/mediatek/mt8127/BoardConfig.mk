# mt8127 platform boardconfig

# Use the non-open-source part, if present
-include vendor/mediatek/mt8127/BoardConfigVendor.mk

# Use the common part
include device/mediatek/common/BoardConfig.mk

MTK_PLATFORM := mt8127
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon

TARGET_TOOLCHAIN_ROOT := prebuilts/gcc/$(HOST_PREBUILT_TAG)/arm/arm-linux-androideabi-4.9
TARGET_TOOLS_PREFIX := $(TARGET_TOOLCHAIN_ROOT)/bin/arm-linux-androideabi-

ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOARD_PLATFORM := mt8127
#MTK_PLATFORM := MT8127
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_NO_FACTORYIMAGE:=true
KERNELRELEASE := 3.10

# display related
#NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
#TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
#MTK_HWC_SUPPORT := yes
#MTK_HWC_VERSION := 1.2

# MTK, Nick Ko, 20140305, Add Display {
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
VSYNC_EVENT_PHASE_OFFSET_NS := -5000000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := -5000000
#PRESENT_TIME_OFFSET_FROM_VSYNC_NS := 0
# MTK, Nick Ko, 20140305, Add Display }

# For MM thread priority
#ifneq ($(MTK_BASIC_PACKAGE), yes)
#MTK_USE_RT_PRIORITY := yes
#endif

BOARD_CONNECTIVITY_VENDOR := MediaTek
TARGET_NO_FACTORYIMAGE := true
#BOARD_USES_MTK_AUDIO := true

#ifeq ($(MTK_AGPS_APP), yes)
#   BOARD_AGPS_SUPL_LIBRARIES := true
#else
#   BOARD_AGPS_SUPL_LIBRARIES := false
#endif

ifeq ($(MTK_GPS_SUPPORT), yes)
  BOARD_GPS_LIBRARIES := true
else
  BOARD_GPS_LIBRARIES := false
endif

ifeq ($(strip $(BOARD_CONNECTIVITY_VENDOR)), MediaTek)

BOARD_CONNECTIVITY_MODULE := conn_soc 
BOARD_MEDIATEK_USES_GPS := true

endif

TARGET_RELEASETOOLS_EXTENSIONS := device/mediatek/mt8127

##TARGET_RECOVERY_UPDATER_LIBS := librecovery_sec_updater_mtk
##TARGET_RECOVERY_UPDATER_EXTRA_LIBS := libsbup 

##TARGET_RECOVERY_UI_LIB := libdefault_device

# mt8127 needs triple buffering
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

ifeq ($(MTK_WLAN_SUPPORT), yes)
BOARD_WLAN_DEVICE := MediaTek
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := /dev/wmtWifi
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P
WIFI_DRIVER_STATE_CTRL_PARAM := /dev/wmtWifi
WIFI_DRIVER_STATE_ON := 1
WIFI_DRIVER_STATE_OFF := 0
ifneq ($(strip $(MTK_BSP_PACKAGE)),yes)
MTK_WIFI_CHINESE_SSID := yes
endif
endif

# mkbootimg header, which is used in LK
BOARD_KERNEL_BASE = 0x80000000
BOARD_KERNEL_OFFSET = 0x00008000
BOARD_RAMDISK_OFFSET = 0x04000000
BOARD_TAGS_OFFSET = 0x06900000

# Add MTK compile options to wrap MTK's modifications on AOSP.
COMMON_GLOBAL_CFLAGS += -DMTK_AOSP_ENHANCEMENT
COMMON_GLOBAL_CPPFLAGS += -DMTK_AOSP_ENHANCEMENT

# include path for mtk in-house tee
pathmap_INCL += trustzone:$(MTK_PATH_SOURCE)/trustzone/mtee/source/common/include
pathmap_INCL += trustzone-uree:$(MTK_PATH_SOURCE)/external/trustzone/mtee/include

# ptgen
MTK_PTGEN_CHIP := $(shell echo $(TARGET_BOARD_PLATFORM) | tr '[a-z]' '[A-Z]')

BOARD_SEPOLICY_DIRS += device/mediatek/mt8127/sepolicy

ifeq ($(TARGET_BUILD_VARIANT),user)
WITH_DEXPREOPT := true
DONT_DEXPREOPT_PREBUILTS := false
endif
