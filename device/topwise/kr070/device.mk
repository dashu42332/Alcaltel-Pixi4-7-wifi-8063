#inherit 8127 platform


include device/topwise/kr070/ProjectConfig.mk

# Example: resource overlay, MUST be put after device/topwise/$(MTK_BASE_PROJECT)/device.mk is inherited
DEVICE_PACKAGE_OVERLAYS := device/topwise/kr070/overlay/specify $(DEVICE_PACKAGE_OVERLAYS)
DEVICE_PACKAGE_OVERLAYS += device/mediatek/common/overlay/wifi
DEVICE_PACKAGE_OVERLAYS += device/mediatek/common/overlay/navbar
DEVICE_PACKAGE_OVERLAYS += device/mediatek/common/overlay/tablet

# Move to platform
###PRODUCT_COPY_FILES += device/topwise/kr070/init.mt8127.rc:root/init.mt8127.rc
# PRODUCT_COPY_FILES += device/mediatek/mt6595_tablet_p1v1/vold.fstab:system/etc/vold.fstab
# PRODUCT_COPY_FILES += device/mediatek/mt6595_tablet_p1v1/fstab.mt6595:root/fstab.mt6595
# PRODUCT_COPY_FILES += device/mediatek/mt6595_tablet_p1v1/egl.cfg:system/lib/egl/egl.cfg
# PRODUCT_COPY_FILES += device/mediatek/mt6595_tablet_p1v1/ueventd.mt6595.rc:root/ueventd.mt6595.rc

PRODUCT_COPY_FILES += device/topwise/kr070/factory_init.project.rc:root/factory_init.project.rc
PRODUCT_COPY_FILES += device/topwise/kr070/init.project.rc:root/init.project.rc
PRODUCT_COPY_FILES += device/topwise/kr070/meta_init.project.rc:root/meta_init.project.rc
PRODUCT_COPY_FILES += device/topwise/kr070/fstab:root/fstab
#PRODUCT_COPY_FILES += device/topwise/kr070/init.modem.rc:root/init.modem.rc

# Move to platform
###PRODUCT_COPY_FILES += device/topwise/kr070/init.charging.rc:root/init.charging.rc


PRODUCT_COPY_FILES += device/topwise/kr070/EBR1:EBR1
PRODUCT_COPY_FILES += device/topwise/kr070/EBR2:EBR2
PRODUCT_COPY_FILES += device/topwise/kr070/MBR:MBR
PRODUCT_COPY_FILES += device/topwise/kr070/MT8127_Android_scatter.txt:MT8127_Android_scatter.txt

# 8127 project not need telephony module
PRODUCT_COPY_FILES += device/topwise/kr070/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

$(call inherit-product,device/mediatek/mt8127/device.mk)

$(call inherit-product-if-exists, vendor/topwise/libs/tpw8127_e/device-vendor.mk)

$(call inherit-product, frameworks/native/build/tablet-dalvik-heap.mk)

ifeq ($(strip $(MTK_EXTERNAL_DONGLE_SUPPORT)), yes)
    PRODUCT_PACKAGES += dongled \
                        chat \
                        rild_dongle \
                        libril_dongle \
                        Dongle \
                        TeledongleDemo \
                        tedongle-telephony 

    $(call inherit-product-if-exists, vendor/mediatek/proprietary/hardware/dongle-ril/vendorSoFile/vendorSoFile.mk)
    $(call inherit-product-if-exists, vendor/mediatek/proprietary/hardware/dongle-ril/dongled/dongled.mk)
    $(call inherit-product-if-exists, vendor/mediatek/proprietary/hardware/dongle-ril/vendor001-ril/vendor001-ril.mk)
    $(call inherit-product-if-exists, vendor/mediatek/proprietary/hardware/dongle-ril/vendor002-ril/vendor002-ril.mk)
    $(call inherit-product-if-exists, vendor/mediatek/proprietary/frameworks/opt/tedongle/tedonglePermission.mk)
endif
###PRODUCT_COPY_FILES += device/topwise/kr070/vold.fstab:system/etc/vold.fstab
PRODUCT_COPY_FILES += device/topwise/kr070/fstab.mt8127:root/fstab.mt8127
###PRODUCT_COPY_FILES += device/topwise/kr070/egl.cfg:system/lib/egl/egl.cfg
PRODUCT_COPY_FILES += device/topwise/kr070/ueventd.mt8127.rc:root/ueventd.mt8127.rc
PRODUCT_COPY_FILES += device/topwise/kr070/init.mt8127usb.rc:root/init.mt8127usb.rc
###PRODUCT_COPY_FILES += device/topwise/kr070/meta_init.rc:root/meta_init.rc
PRODUCT_COPY_FILES += device/topwise/kr070/meta_init.project.rc:root/meta_init.project.rc
PRODUCT_COPY_FILES += device/topwise/kr070/audio_policy.conf:system/etc/audio_policy.conf
PRODUCT_COPY_FILES += device/topwise/kr070/init.recovery.mt8127.rc:root/init.recovery.mt8127.rc
PRODUCT_COPY_FILES += device/topwise/kr070/init.modem.rc:root/init.modem.rc

# Add FlashTool needed files
PRODUCT_COPY_FILES += device/topwise/kr070/secro.img:secro.img
#PRODUCT_COPY_FILES += device/topwise/kr070/fbtool-da/fbtool-da-pl.bin:fbtool-da-pl.bin
#PRODUCT_COPY_FILES += device/topwise/kr070/fbtool-da/fbtool-da-lk.bin:fbtool-da-lk.bin
#camera
PRODUCT_COPY_FILES += device/topwise/kr070/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml

# Audio Related Resource
PRODUCT_COPY_FILES += vendor/mediatek/proprietary/custom/kr070/factory/res/sound/testpattern1.wav:system/res/sound/testpattern1.wav
PRODUCT_COPY_FILES += vendor/mediatek/proprietary/custom/kr070/factory/res/sound/ringtone.wav:system/res/sound/ringtone.wav
#Images for LCD test in factory mode
PRODUCT_COPY_FILES += vendor/mediatek/proprietary/custom/kr070/factory/res/images/lcd_test_00.png:system/res/images/lcd_test_00.png
PRODUCT_COPY_FILES += vendor/mediatek/proprietary/custom/kr070/factory/res/images/lcd_test_01.png:system/res/images/lcd_test_01.png
PRODUCT_COPY_FILES += vendor/mediatek/proprietary/custom/kr070/factory/res/images/lcd_test_02.png:system/res/images/lcd_test_02.png

# sensor related xml files for CTS
ifneq ($(strip $(CUSTOM_KERNEL_ACCELEROMETER)),)
  PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml
endif

ifneq ($(strip $(CUSTOM_KERNEL_MAGNETOMETER)),)
  PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml
endif

ifneq ($(strip $(CUSTOM_KERNEL_ALSPS)),)
  PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml
  PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml
else
  ifneq ($(strip $(CUSTOM_KERNEL_PS)),)
    PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml
  endif
  ifneq ($(strip $(CUSTOM_KERNEL_ALS)),)
    PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml
  endif
endif

ifneq ($(strip $(CUSTOM_KERNEL_GYROSCOPE)),)
  PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml
endif

ifneq ($(strip $(CUSTOM_KERNEL_BAROMETER)),)
  PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml
endif

# touch related file for CTS
ifeq ($(strip $(CUSTOM_KERNEL_TOUCHPANEL)),generic)
  PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml
else
  PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml
  PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml
  PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml
  PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml
  PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml
endif

# GPS relative file
ifeq ($(MTK_GPS_SUPPORT),yes)
  PRODUCT_COPY_FILES += vendor/mediatek/proprietary/hardware/connectivity/gps/HAL/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml
endif

PRODUCT_COPY_FILES += device/topwise/kr070/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

###liudongming 20160303
ifdef CUSTOM_MMI_PROJECT_NAME
		PRODUCT_COPY_FILES += device/topwise/kr070/mmidata_$(strip $(CUSTOM_MMI_PROJECT_NAME)).xml:system/etc/mmidata.xml
else
		PRODUCT_COPY_FILES += device/topwise/kr070/mmidata.xml:system/etc/mmidata.xml
endif

PRODUCT_PACKAGES += meta_tst
PRODUCT_PACKAGES += akmd8963
PRODUCT_PACKAGES += PGA_50_Free_Games

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += persist.sys.usb.config=mtp

# meta tool
PRODUCT_PROPERTY_OVERRIDES += ro.mediatek.chip_ver=S01
PRODUCT_PROPERTY_OVERRIDES += ro.mediatek.version.release=$(strip $(MTK_BUILD_VERNO))

# dual input charger support
ifeq ($(strip $(MTK_DUAL_INPUT_CHARGER_SUPPORT)),yes)
  PRODUCT_PROPERTY_OVERRIDES += ro.mtk_diso_support=true
endif

#ifeq ($(strip $(MTK_BATTERY_LIFETIME_DATA_SUPPORT)),yes)
PRODUCT_PACKAGES += battery_lifetime_data
#endif

ifeq ($(strip $(MTK_FILEMANAGER_APP)), yes)
  PRODUCT_PACKAGES += FileManager
endif

ifeq ($(strip $(MTK_DATA_TRANSFER_APP)), yes)
  PRODUCT_PACKAGES += DataTransfer
endif

ifeq ($(strip $(MTK_CALENDAR_IMPORTER_APP)), yes)
  PRODUCT_PACKAGES += CalendarImporter
endif

ifeq ($(strip $(MTK_WFD_HDCP_RX_SUPPORT)),yes)
  PRODUCT_PACKAGES += libstagefright_hdcprx
endif

ifeq ($(strip $(MTK_WFD_HDCP_TX_SUPPORT)),yes)
  PRODUCT_PACKAGES += libstagefright_hdcptx
endif

# BT
PRODUCT_PACKAGES += \
    libbluetooth_mtk \
    libbluetooth_mtk_pure \
    libbluetooth_hw_test \
    autobt \
    audio.a2dp.default

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.mount.fs=EXT4

PRODUCT_PACKAGES += SchedulePowerOnOff



ifneq ($(strip $(TOPWISE_MINI)), true)
  ifeq ($(strip $(TOPWISE_GMS_R5)),yes)
    $(call inherit-product-if-exists, vendor/google/products/gms.mk)
  else
    $(call inherit-product-if-exists, vendor/google_r3/products/gms.mk)
  endif
endif
#add by wqj start
ifeq ($(strip $(TOPWISE_MINI)), true)
PRODUCT_PACKAGES += SmartSMForTopwiseszOnly
endif
#add by wqj end

# set locales & aapt config.
PRODUCT_LOCALES := en_US es_ES zh_CN zh_TW ru_RU pt_BR fr_FR de_DE tr_TR it_IT in_ID ms_MY vi_VN ar_EG hi_IN th_TH bn_IN pt_PT ur_PK fa_IR nl_NL el_GR hu_HU tl_PH ro_RO cs_CZ iw_IL my_MM km_KH ko_KR pl_PL es_US bg_BG hr_HR lv_LV lt_LT sk_SK uk_UA de_AT da_DK fi_FI nb_NO sv_SE en_GB ja_JP
PRODUCT_AAPT_CONFIG := large xlarge ldpi mdpi hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

###add for build custom
ifdef TOPWISE_CUSTOM
  ifneq ($(strip $(TOPWISE_CUSTOM)),NONE)
  include customer/kr070/$(TOPWISE_CUSTOM_SPEC)/common/topwise_build_properties.mk
  include customer/kr070/$(TOPWISE_CUSTOM_SPEC)/$(TOPWISE_CUSTOM_SEG)/topwise_build_properties.mk
  DEVICE_PACKAGE_OVERLAYS := customer/public_files/custom_res $(DEVICE_PACKAGE_OVERLAYS)
  DEVICE_PACKAGE_OVERLAYS := customer/kr070/$(TOPWISE_CUSTOM_SPEC)/common/Resource $(DEVICE_PACKAGE_OVERLAYS)
  DEVICE_PACKAGE_OVERLAYS := customer/kr070/$(TOPWISE_CUSTOM_SPEC)/$(TOPWISE_CUSTOM_SEG)/Resource $(DEVICE_PACKAGE_OVERLAYS)
  endif
endif


#TCL FOTA FLAG 
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.def.device.name=Pixi4-7_WiFi

#version num
 CUSTOM_VERSION_SN :=$(shell cat version_babyd/custom.inc)
ifneq ($(strip $(CUSTOM_VERSION_SN)),)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.tct.boot.ver=B$(CUSTOM_VERSION_SN)
PRODUCT_PROPERTY_OVERRIDES +=ro.tct.sys.ver=Y$(CUSTOM_VERSION_SN)
endif
###qhy add tune2fs
PRODUCT_PACKAGES += tune2fs
