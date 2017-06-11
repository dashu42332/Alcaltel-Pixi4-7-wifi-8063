#resource overlay interface
DEVICE_PACKAGE_OVERLAYS := device/mediatek/mt8127/overlay

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml
#PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml
PRODUCT_COPY_FILES += device/mediatek/mt8127/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml
PRODUCT_COPY_FILES += device/mediatek/mt8127/media_codecs.xml:system/etc/media_codecs.xml
PRODUCT_COPY_FILES += device/mediatek/mt8127/media_codecs_performance.xml:system/etc/media_codecs_performance.xml
PRODUCT_COPY_FILES += device/mediatek/mt8127/media_codecs_mediatek_audio.xml:system/etc/media_codecs_mediatek_audio.xml
PRODUCT_COPY_FILES += device/mediatek/mt8127/media_codecs_mediatek_video.xml:system/etc/media_codecs_mediatek_video.xml
PRODUCT_COPY_FILES += device/mediatek/mt8127/mtk_omx_core.cfg:system/etc/mtk_omx_core.cfg
PRODUCT_COPY_FILES += device/mediatek/mt8127/thermal.conf:system/etc/.tp/thermal.conf
PRODUCT_COPY_FILES += device/mediatek/mt8127/thermal.off.conf:system/etc/.tp/thermal.off.conf
PRODUCT_COPY_FILES += device/mediatek/mt8127/ht120.mtc:system/etc/.tp/.ht120.mtc
PRODUCT_COPY_FILES += device/mediatek/mt8127/ACCDET.kl:system/etc/ACCDET.kl
PRODUCT_COPY_FILES += device/mediatek/mt8127/auto_shutdown.sh:root/auto_shutdown.sh
PRODUCT_COPY_FILES += device/mediatek/mt8127/init.mt8127.rc:root/init.mt8127.rc
PRODUCT_COPY_FILES += device/mediatek/mt8127/meta_init.rc:root/meta_init.rc
PRODUCT_COPY_FILES += device/mediatek/mt8127/init.xlog.rc:root/init.xlog.rc
PRODUCT_COPY_FILES += device/mediatek/mt8127/egl.cfg:system/lib/egl/egl.cfg
PRODUCT_COPY_FILES += frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml
PRODUCT_COPY_FILES += frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml
PRODUCT_COPY_FILES += device/mediatek/mt8127/init.recovery.mt8127.rc:root/init.recovery.mt8127.rc

#GPU collection
PRODUCT_PACKAGES += pvrsrvctl
PRODUCT_PACKAGES += pvrdebug
PRODUCT_PACKAGES += libEGL_POWERVR_ROGUE.so
PRODUCT_PACKAGES += libGLESv1_CM_POWERVR_ROGUE.so
PRODUCT_PACKAGES += libGLESv2_POWERVR_ROGUE.so
PRODUCT_PACKAGES += libGdmaScalerPipe
PRODUCT_PACKAGES += libJpgDecPipe
PRODUCT_PACKAGES += libSwJpgCodec
PRODUCT_PACKAGES += gralloc.mt8127.so
PRODUCT_PACKAGES += hwcomposer.mt8127
PRODUCT_PACKAGES += libglslcompiler.so
PRODUCT_PACKAGES += libIMGegl.so
PRODUCT_PACKAGES += libpvrANDROID_WSEGL.so
PRODUCT_PACKAGES += libPVRScopeServices.so
PRODUCT_PACKAGES += libsrv_init.so
PRODUCT_PACKAGES += libsrv_um.so
PRODUCT_PACKAGES += libusc.so
###PRODUCT_PACKAGES += libBLPP.so
###PRODUCT_PACKAGES += rc.fac
###PRODUCT_PACKAGES += mtkGD
PRODUCT_PACKAGES += libnvram
PRODUCT_PACKAGES += libnvram_sec
PRODUCT_PACKAGES += libnvram_daemon_callback
PRODUCT_PACKAGES += libfile_op
PRODUCT_PACKAGES += nvram_agent_binder
PRODUCT_PACKAGES += nvram_daemon
PRODUCT_PACKAGES += libnvram_platform
PRODUCT_PACKAGES += liblic_divx
PRODUCT_PACKAGES += liblic_s263
PRODUCT_PACKAGES += libMtkVideoTranscoder
PRODUCT_PACKAGES += libMtkOmxCore
PRODUCT_PACKAGES += libMtkOmxOsalUtils
PRODUCT_PACKAGES += libMtkOmxVdecEx
PRODUCT_PACKAGES += libMtkOmxVenc
PRODUCT_PACKAGES += libstagefrighthw
PRODUCT_PACKAGES += libstagefright_memutil
PRODUCT_PACKAGES += libvcodec_utility
PRODUCT_PACKAGES += libvcodec_oal
PRODUCT_PACKAGES += libvcodecdrv
PRODUCT_PACKAGES += libdpframework
PRODUCT_PACKAGES += libdpframework_os
PRODUCT_PACKAGES += libdpframework_plat
PRODUCT_PACKAGES += libsched
PRODUCT_PACKAGES += sensors.mt8127
PRODUCT_PACKAGES += lights.default
PRODUCT_PACKAGES += lights.mt8127
PRODUCT_PACKAGES += audio.r_submix.default
PRODUCT_PACKAGES += audio.usb.default
PRODUCT_PACKAGES += audio.primary.mt8127
PRODUCT_PACKAGES += audio_policy.stub
PRODUCT_PACKAGES += audio_policy.mt8127
PRODUCT_PACKAGES += audiocli
PRODUCT_PACKAGES += mobile_log_d
PRODUCT_PACKAGES += libmobilelog_jni
PRODUCT_PACKAGES += libaudio-resampler
PRODUCT_PACKAGES += libaudiocustparam
PRODUCT_PACKAGES += libaudiodcrflt
PRODUCT_PACKAGES += libaudiosetting
PRODUCT_PACKAGES += libnbaio
PRODUCT_PACKAGES += libaudioflinger
PRODUCT_PACKAGES += libmeta_audio
PRODUCT_PACKAGES += libmmprofile
PRODUCT_PACKAGES += libmmprofile_jni
PRODUCT_PACKAGES += libblisrc
PRODUCT_PACKAGES += libaudiocomponentengine
PRODUCT_PACKAGES += libbessound_hd_mtk
PRODUCT_PACKAGES += libblisrc32
PRODUCT_PACKAGES += libmtklimiter
PRODUCT_PACKAGES += libmtkshifter
PRODUCT_PACKAGES += netdiag
PRODUCT_PACKAGES += tcpdump
PRODUCT_PACKAGES += libbwc
PRODUCT_PACKAGES += libion
PRODUCT_PACKAGES += libm4u
PRODUCT_PACKAGES += libmtk_drvb
PRODUCT_PACKAGES += drvbd
PRODUCT_PACKAGES += libdrmplayreadyplugin
PRODUCT_PACKAGES += libdrmplayreadydecryptor
PRODUCT_PACKAGES += libplayready
PRODUCT_PACKAGES += lib_uree_mtk_video_secure_al
PRODUCT_PACKAGES += libFraunhoferAAC
PRODUCT_PACKAGES += audiocmdservice_atci
PRODUCT_PACKAGES += libmp2dec_sa.ca7
PRODUCT_PACKAGES += libvp8dec_sa.ca7
PRODUCT_PACKAGES += libvp9dec_sa.ca7
PRODUCT_PACKAGES += libvc1dec_sa.ca7
PRODUCT_PACKAGES += libmp4enc_sa.ca7
PRODUCT_PACKAGES += libMtkOmxAudioEncBase
PRODUCT_PACKAGES += libMtkOmxAmrEnc
PRODUCT_PACKAGES += libMtkOmxAwbEnc
PRODUCT_PACKAGES += libMtkOmxAacEnc
PRODUCT_PACKAGES += libMtkOmxVorbisEnc
PRODUCT_PACKAGES += libMtkOmxAdpcmEnc
PRODUCT_PACKAGES += libMtkOmxMp3Dec
PRODUCT_PACKAGES += libMtkOmxGsmDec
PRODUCT_PACKAGES += libMtkOmxAacDec
PRODUCT_PACKAGES += libMtkOmxG711Dec
PRODUCT_PACKAGES += libMtkOmxVorbisDec
PRODUCT_PACKAGES += libMtkOmxAudioDecBase
PRODUCT_PACKAGES += libMtkOmxAdpcmDec
PRODUCT_PACKAGES += libMtkOmxRawDec
PRODUCT_PACKAGES += libMtkOmxAMRNBDec
PRODUCT_PACKAGES += libMtkOmxAMRWBDec
PRODUCT_PACKAGES += libMtkOmxApeDec
PRODUCT_PACKAGES += libMtkOmxFlacDec
###PRODUCT_PACKAGES += libstagefright_hdcp
PRODUCT_PACKAGES += libbrctrler
PRODUCT_PACKAGES += ipod
PRODUCT_PACKAGES += libipod
PRODUCT_PACKAGES += GoogleOtaBinder
##Sync from phone
PRODUCT_PACKAGES += AccountAndSyncSettings
PRODUCT_PACKAGES += DeskClock
PRODUCT_PACKAGES += AlarmProvider
PRODUCT_PACKAGES += Bluetooth
PRODUCT_PACKAGES += Calculator
PRODUCT_PACKAGES += Calendar
PRODUCT_PACKAGES += CertInstaller
PRODUCT_PACKAGES += DrmProvider
PRODUCT_PACKAGES += Email
PRODUCT_PACKAGES += FusedLocation
PRODUCT_PACKAGES += TelephonyProvider
PRODUCT_PACKAGES += Exchange2
PRODUCT_PACKAGES += LatinIME
PRODUCT_PACKAGES += Music
PRODUCT_PACKAGES += MusicFX
PRODUCT_PACKAGES += Protips
PRODUCT_PACKAGES += QuickSearchBox
PRODUCT_PACKAGES += Settings
PRODUCT_PACKAGES += Sync
PRODUCT_PACKAGES += SystemUI
PRODUCT_PACKAGES += Updater
PRODUCT_PACKAGES += CalendarProvider
PRODUCT_PACKAGES += ccci_mdinit
PRODUCT_PACKAGES += ccci_fsd
PRODUCT_PACKAGES += ccci_rpcd
PRODUCT_PACKAGES += batterywarning
PRODUCT_PACKAGES += BatteryWarning
PRODUCT_PACKAGES += SyncProvider
PRODUCT_PACKAGES += Launcher3
##Sync from phone

PRODUCT_PACKAGES += kpoc_charger
PRODUCT_PACKAGES += boot_logo_updater
PRODUCT_PACKAGES += boot_logo
PRODUCT_PACKAGES += bootanimation
###PRODUCT_PACKAGES += libshowlogo
PRODUCT_PACKAGES += libaal
PRODUCT_PACKAGES += aal
PRODUCT_PACKAGES += pq
PRODUCT_PACKAGES += libPQjni
PRODUCT_PACKAGES += libjni_pq
PRODUCT_PACKAGES += libaal_cust
PRODUCT_PACKAGES += aee
PRODUCT_PACKAGES += aee_aed
PRODUCT_PACKAGES += aee_core_forwarder
PRODUCT_PACKAGES += aee_dumpstate
PRODUCT_PACKAGES += aee_archive
PRODUCT_PACKAGES += rtt
PRODUCT_PACKAGES += libaed
PRODUCT_PACKAGES += xlog
PRODUCT_PACKAGES += libion_mtk
PRODUCT_PACKAGES += libdirect-coredump
PRODUCT_PACKAGES += libmediatek_exceptionlog
PRODUCT_PACKAGES += dpfd
###PRODUCT_PACKAGES += ovlfd
PRODUCT_PACKAGES += ext4_resize

##Sync from phone
PRODUCT_PACKAGES += guiext-server
PRODUCT_PACKAGES += resize_ext4
PRODUCT_PACKAGES += send_bug
PRODUCT_PACKAGES += met-cmd
PRODUCT_PACKAGES += libmet-tag
PRODUCT_PACKAGES += met_log_d
PRODUCT_PACKAGES += trace-cmd
##Sync from phone

PRODUCT_PACKAGES += tiny_mkswap
PRODUCT_PACKAGES += tiny_swapon
PRODUCT_PACKAGES += tiny_swapoff

#DHCPv6
PRODUCT_PACKAGES += dhcp6c
PRODUCT_PACKAGES += dhcp6ctl
PRODUCT_PACKAGES += dhcp6c.conf
PRODUCT_PACKAGES += dhcp6cDNS.conf
PRODUCT_PACKAGES += dhcp6s
PRODUCT_PACKAGES += dhcp6s.conf
PRODUCT_PACKAGES += dhcp6c.script
PRODUCT_PACKAGES += dhcp6cctlkey

#HDMI
###PRODUCT_PACKAGES += libmtkhdmi_jni

#Camera
PRODUCT_PACKAGES += camera.mt8127
PRODUCT_PACKAGES += lib3a
PRODUCT_PACKAGES += libacdk
PRODUCT_PACKAGES += libcam.camadapter
PRODUCT_PACKAGES += libcam.campipe
PRODUCT_PACKAGES += libcam.camshot
PRODUCT_PACKAGES += libcam.client
PRODUCT_PACKAGES += libcam.device1
PRODUCT_PACKAGES += libcam.exif
PRODUCT_PACKAGES += libcam.paramsmgr
PRODUCT_PACKAGES += libcam.utils
PRODUCT_PACKAGES += libcam_mmp
PRODUCT_PACKAGES += libcam_platform
PRODUCT_PACKAGES += libcam_utils
PRODUCT_PACKAGES += libcamalgo
PRODUCT_PACKAGES += libcamdrv
PRODUCT_PACKAGES += libcamera_client
PRODUCT_PACKAGES += libcamera_metadata
PRODUCT_PACKAGES += libcameraanalyzer
PRODUCT_PACKAGES += libcameracustom
PRODUCT_PACKAGES += libcameraservice
PRODUCT_PACKAGES += libimageio

####drm key
#PRODUCT_PACKAGES += kisd
#PRODUCT_PACKAGES += kisd_starter.sh

#Thermal
PRODUCT_PACKAGES += MTKThermalManager
PRODUCT_PACKAGES += libmtcloader
PRODUCT_PACKAGES += thermal_manager
PRODUCT_PACKAGES += thermald
PRODUCT_PACKAGES += thermal

CUSTOM_DIR := device/mediatek/proprietary/custom/$(subst full_,,$(TARGET_PRODUCT))
ifneq ($(wildcard $(CUSTOM_DIR)/drm/FORCE_KB_EKKB),)
PRODUCT_COPY_FILES += $(CUSTOM_DIR)/drm/FORCE_KB_EKKB:data/key_provisioning/FORCE_KB_EKKB
endif

ifneq ($(wildcard $(CUSTOM_DIR)/drm/KB_EKKB),)
PRODUCT_COPY_FILES += $(CUSTOM_DIR)/drm/KB_EKKB:data/key_provisioning/KB_EKKB
endif

ifneq ($(wildcard $(CUSTOM_DIR)/drm/KB_PM),)
PRODUCT_COPY_FILES += $(CUSTOM_DIR)/drm/KB_PM:data/key_provisioning/KB_PM
endif

#########################################################
####Widevine DRM begin
ifeq ($(strip $(MTK_WVDRM_SUPPORT)),yes)
	PRODUCT_PROPERTY_OVERRIDES += drm.service.enabled=true
	PRODUCT_PROPERTY_OVERRIDES += ro.mtk_in_house_tee_support=true
	PRODUCT_PROPERTY_OVERRIDES += mtk_in_house_tee_support=true
PRODUCT_PACKAGES += com.google.widevine.software.drm.xml
PRODUCT_PACKAGES += com.google.widevine.software.drm
PRODUCT_PACKAGES += libdrmmtkutil
PRODUCT_PACKAGES += lib_uree_mtk_crypto
PRODUCT_PACKAGES += libdrmwvmplugin
PRODUCT_PACKAGES += libwvm
PRODUCT_PACKAGES += libdrmdecrypt
    ifeq ($(strip $(MTK_WVDRM_L1_SUPPORT)),yes)
PRODUCT_PACKAGES += libdrmwvmplugin_L1
PRODUCT_PACKAGES += libwvm_L1
PRODUCT_PACKAGES += libdrmdecrypt_L1
PRODUCT_PACKAGES += libWVStreamControlAPI_L1
PRODUCT_PACKAGES += libwvdrm_L1
    else
PRODUCT_PACKAGES += libdrmwvmplugin_L3
PRODUCT_PACKAGES += libwvm_L3
PRODUCT_PACKAGES += libdrmdecrypt_L3
PRODUCT_PACKAGES += libWVStreamControlAPI_L3
PRODUCT_PACKAGES += libwvdrm_L3
    endif
else
  PRODUCT_PROPERTY_OVERRIDES += drm.service.enabled=false
endif

###Modular drm
ifeq ($(strip $(MTK_WVDRM_SUPPORT)),yes)
#Mock modular drm plugin for cts
	PRODUCT_PACKAGES += libmockdrmcryptoplugin
	PRODUCT_PACKAGES += libwvdrmengine

	ifeq ($(strip $(MTK_WVDRM_L1_SUPPORT)),yes)
		PRODUCT_PACKAGES += lib_uree_mtk_modular_drm
		PRODUCT_PACKAGES += liboemcrypto
	endif
endif
# Factory Mode					  
PRODUCT_PACKAGES += libmmfactoryutil
PRODUCT_PACKAGES += factory
PRODUCT_PACKAGES += factory.ini

#Widevine DRM end
######################################################
#################################################
#OMA DRM part, MTK_DRM_APP should be set to false
ifeq ($(strip $(MTK_DRM_APP)),yes)
  PRODUCT_PACKAGES += libdrmmtkutil
  #Media framework reads this property
  PRODUCT_PROPERTY_OVERRIDES += drm.service.enabled=true
  ifeq ($(strip $(MTK_OMADRM_SUPPORT)), yes)
    PRODUCT_PACKAGES += libdrmmtkplugin
    PRODUCT_PACKAGES += drm_chmod
    PRODUCT_PACKAGES += libdcfdecoderjni
  endif
  ifeq ($(strip $(MTK_CTA_SET)), yes)
    PRODUCT_PACKAGES += libdrmctaplugin
    PRODUCT_PACKAGES += DataProtection
  endif
endif
################################################
#Meta mode
PRODUCT_PACKAGES += meta_tst
PRODUCT_PACKAGES += multi_init


#secure boot
PRODUCT_PACKAGES += sbchk
PRODUCT_PACKAGES += sec_chk.sh
PRODUCT_PACKAGES += S_ANDRO_SFL.ini

#HDMI
PRODUCT_PACKAGES += libmtkhdmi_jni

# hotplug policy
PRODUCT_PACKAGES += hotplug

#Dolby DS1
###PRODUCT_PACKAGES += libstagefright_soft_ddpdec
###PRODUCT_PACKAGES += libdseffect
###PRODUCT_PACKAGES += dolby_ds
###PRODUCT_PACKAGES += Ds
###PRODUCT_PACKAGES += DsUI

PRODUCT_COPY_FILES += device/mediatek/mt8127/audio_device.xml:system/etc/audio_device.xml
###PRODUCT_COPY_FILES += device/mediatek/mt8127/audio_effects.conf:system/vendor/etc/audio_effects.conf
###PRODUCT_COPY_FILES += device/mediatek/mt8127/dolby/ds1-default.xml:system/etc/ds1-default.xml
PRODUCT_COPY_FILES += device/mediatek/mt8127/factory_init.rc:root/factory_init.rc

PRODUCT_PROPERTY_OVERRIDES += ro.mediatek.platform=MT8127

ifeq (user, $(TARGET_BUILD_VARIANT))
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.adb.secure=1
endif

#met
PRODUCT_PACKAGES += met-cmd
PRODUCT_PACKAGES += libmet-tag

ifeq ($(strip $(MTK_ENGINEERMODE_APP)), yes)
  PRODUCT_PACKAGES += EngineerMode
  PRODUCT_PACKAGES += EngineerModeSim
  PRODUCT_PACKAGES += MobileLog
  PRODUCT_PACKAGES += libem_bt_jni
  PRODUCT_PACKAGES += libem_platform32_dummy
  PRODUCT_PACKAGES += libem_support_jni
  PRODUCT_PACKAGES += libem_gpio_jni
  PRODUCT_PACKAGES += libem_modem_jni
  PRODUCT_PACKAGES += libem_usb_jni
  PRODUCT_PACKAGES += libem_wifi_jni
  PRODUCT_PACKAGES += libem_sensor_jni
  PRODUCT_PACKAGES += libem_lte_jni
  ifeq ($(strip $(MTK_NFC_SUPPORT)), yes)
    PRODUCT_PACKAGES += libem_nfc_jni
  endif
  ifneq ($(strip $(MTK_GMO_RAM_OPTIMIZE)), yes)
      PRODUCT_PACKAGES += em_svr
  endif
endif

ifeq ($(strip $(MTK_MTKLOGGER_SUPPORT)), yes)
  PRODUCT_PACKAGES += MTKLogger
endif

ifeq ($(strip $(MTK_GPS_SUPPORT)), yes)
  PRODUCT_PACKAGES += YGPS
endif

ifeq ($(strip $(MTK_VIDEO_THUMBNAIL_PLAY_SUPPORT)),yes)
  PRODUCT_PACKAGES += libjtranscode
endif

#GPU
PRODUCT_PACKAGES += libMali
PRODUCT_PACKAGES += libGLESv1_CM_mali
PRODUCT_PACKAGES += libGLESv2_mali
PRODUCT_PACKAGES += libEGL_mali
PRODUCT_PACKAGES += gralloc.mt8127
PRODUCT_PACKAGES += libGLES_mali
PRODUCT_PACKAGES += libgpu_aux

#DFO
ifneq ($(strip $(foreach value,$(DFO_NVRAM_SET),$(filter yes,$($(value))))),)
  PRODUCT_PACKAGES += featured
  PRODUCT_PACKAGES += libdfo
  PRODUCT_PACKAGES += libdfo_jni
endif

ifeq ($(strip $(MTK_WFD_SINK_SUPPORT)), yes)
  PRODUCT_PACKAGES += MtkFloatMenu
endif

####inherit connectivity combo chip mt66xx serial product packages
PRODUCT_MEDIATEK_CONNECTIVITY_HARDWARE := mediatek/config/combo_mt66xx
###$(call inherit-product, hardware/$(PRODUCT_MEDIATEK_CONNECTIVITY_HARDWARE)/product_package.mk)

PRODUCT_PROPERTY_OVERRIDES += persist.radio.combo.chipid=-1

#init script and native processes
PRODUCT_PACKAGES += \
  	init.connectivity.rc \
    6620_launcher \
    6620_wmt_concurrency \
    6620_wmt_lpbk \
    stp_dump3 \
    wmt_loader

#config files and patch files
PRODUCT_PACKAGES += \
	WMT.cfg \
	mt6620_patch_e3_hdr.bin \
	mt6620_patch_e3_0_hdr.bin \
	mt6620_patch_e3_1_hdr.bin \
	mt6620_patch_e3_2_hdr.bin \
	mt6620_patch_e3_3_hdr.bin \
	mt6620_patch_e6_hdr.bin \
	mt6620_ant_m1.cfg \
	mt6620_ant_m2.cfg \
	mt6620_ant_m3.cfg \
	mt6620_ant_m4.cfg \
	mt6620_ant_m5.cfg \
	mt6620_ant_m6.cfg \
	mt6620_ant_m7.cfg \
	mt6628_patch_e1_hdr.bin \
	mt6628_patch_e2_hdr.bin \
	mt6628_patch_e2_0_hdr.bin \
	mt6628_patch_e2_1_hdr.bin \
	mt6628_ant_m1.cfg \
	mt6628_ant_m2.cfg \
	mt6628_ant_m3.cfg \
	mt6628_ant_m4.cfg \

# common part finish

#wifi start
PRODUCT_PACKAGES += \
	hdc \
	libwifitest \
	wifitest \
	wpa_supplicant \
	wpa_supplicant.conf \
	wpa_supplicant_overlay.conf \
	p2p_supplicant_overlay.conf \
	wpa_cli \
	hostapd \
	hostapd_cli \
	WIFI_RAM_CODE \
	WIFI_RAM_CODE_E6 \
	WIFI_RAM_CODE_MT6628 \
	WIFI_RAM_CODE_8127 \
	WIFI_6628 \
	dhcpcd.conf

PRODUCT_COPY_FILES +=  \
frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml

ifeq ($(strip $(MTK_WLAN_SUPPORT)),yes)
  PRODUCT_PROPERTY_OVERRIDES += \
    mediatek.wlan.chip=$(MTK_WLAN_CHIP)

  PRODUCT_PROPERTY_OVERRIDES += \
    mediatek.wlan.module.postfix="_"$(shell echo $(strip $(MTK_WLAN_CHIP)) | tr A-Z a-z)
endif

ifeq ($(strip $(MTK_SYSTEM_UPDATE_SUPPORT)), yes)
  PRODUCT_PACKAGES += SystemUpdate
  PRODUCT_PACKAGES += SystemUpdateAssistant
endif

#wifi finish	

#FM
ifeq ($(strip $(MTK_FM_SUPPORT)), yes)
  PRODUCT_PACKAGES += FMRadio
endif

PRODUCT_PACKAGES += libfmjni
PRODUCT_PACKAGES += libfmmt6616
PRODUCT_PACKAGES += libfmmt6626
PRODUCT_PACKAGES += libfmmt6620
PRODUCT_PACKAGES += libfmmt6628
PRODUCT_PACKAGES += libfmmt6627
PRODUCT_PACKAGES += libfmar1000
PRODUCT_PACKAGES += libfmcust
PRODUCT_PACKAGES += fm_cust.cfg
PRODUCT_PACKAGES += mt6620_fm_cust.cfg
PRODUCT_PACKAGES += mt6627_fm_cust.cfg
PRODUCT_PACKAGES += mt6628_fm_rom.bin
PRODUCT_PACKAGES += mt6628_fm_v1_patch.bin
PRODUCT_PACKAGES += mt6628_fm_v1_coeff.bin
PRODUCT_PACKAGES += mt6628_fm_v2_patch.bin
PRODUCT_PACKAGES += mt6628_fm_v2_coeff.bin
PRODUCT_PACKAGES += mt6628_fm_v3_patch.bin
PRODUCT_PACKAGES += mt6628_fm_v3_coeff.bin
PRODUCT_PACKAGES += mt6628_fm_v4_patch.bin
PRODUCT_PACKAGES += mt6628_fm_v4_coeff.bin
PRODUCT_PACKAGES += mt6628_fm_v5_patch.bin
PRODUCT_PACKAGES += mt6628_fm_v5_coeff.bin
PRODUCT_PACKAGES += mt6627_fm_v1_patch.bin
PRODUCT_PACKAGES += mt6627_fm_v1_coeff.bin
PRODUCT_PACKAGES += mt6627_fm_v2_patch.bin
PRODUCT_PACKAGES += mt6627_fm_v2_coeff.bin
PRODUCT_PACKAGES += mt6627_fm_v3_patch.bin
PRODUCT_PACKAGES += mt6627_fm_v3_coeff.bin
PRODUCT_PACKAGES += mt6627_fm_v4_patch.bin
PRODUCT_PACKAGES += mt6627_fm_v4_coeff.bin
PRODUCT_PACKAGES += mt6627_fm_v5_patch.bin
PRODUCT_PACKAGES += mt6627_fm_v5_coeff.bin
PRODUCT_PACKAGES += akmd09911
PRODUCT_PACKAGES += msensord

#GPS
PRODUCT_PACKAGES += \
    mnld \
    libmnlp \
    libmnlp_mt6628 \
    libmnlp_mt6620 \
    libmnlp_mt3332 \
    libmnlp_mt6572 \
    gps.mt8127 \
    libmnl.a \
    libsupl.a \
    libhotstill.a \
    libagent.a \
    
# bt
PRODUCT_PACKAGES += \
    libbluetoothdrv \
    libbluetooth_mtk \
    libbluetoothem_mtk \
    libbluetooth_relayer \
    libmeta_bluetooth 
    
ifeq ($(strip $(MTK_BT_SUPPORT)), yes)
  PRODUCT_PROPERTY_OVERRIDES += \
        ro.btstack=blueangel

  PRODUCT_PACKAGES += auto_pair_blacklist.conf
  PRODUCT_PACKAGES += btconfig.xml
  PRODUCT_PACKAGES += MtkBt
  PRODUCT_PACKAGES += libbtcusttable
  PRODUCT_PACKAGES += libbtcust
  PRODUCT_PACKAGES += libmtkbtextadp
  PRODUCT_PACKAGES += libextpbap
  PRODUCT_PACKAGES += libextavrcp
  PRODUCT_PACKAGES += libextopp
  PRODUCT_PACKAGES += libextsys
  PRODUCT_PACKAGES += libextftp
  PRODUCT_PACKAGES += libmtkbtextadpa2dp
  PRODUCT_PACKAGES += libmtka2dp
  PRODUCT_PACKAGES += libextbip
  PRODUCT_PACKAGES += libextbpp
  PRODUCT_PACKAGES += libexthid
  PRODUCT_PACKAGES += libextsimap
  PRODUCT_PACKAGES += libextjsr82
  PRODUCT_PACKAGES += libbtsession
  PRODUCT_PACKAGES += libmtkbtextpan
  PRODUCT_PACKAGES += libextmap
  PRODUCT_PACKAGES += libmtkbtextspp
  PRODUCT_PACKAGES += libexttestmode
  PRODUCT_PACKAGES += libpppbtdun
  PRODUCT_PACKAGES += libextopp_jni
  PRODUCT_PACKAGES += libexthid_jni
  PRODUCT_PACKAGES += libextpan_jni
  PRODUCT_PACKAGES += libextftp_jni
  PRODUCT_PACKAGES += libextbpp_jni
  PRODUCT_PACKAGES += libextbip_jni
  PRODUCT_PACKAGES += libextpbap_jni
  PRODUCT_PACKAGES += libextavrcp_jni
  PRODUCT_PACKAGES += libextsimap_jni
  PRODUCT_PACKAGES += libextdun_jni
  PRODUCT_PACKAGES += libextmap_jni
  PRODUCT_PACKAGES += libextsys_jni
  PRODUCT_PACKAGES += libextadvanced_jni
  PRODUCT_PACKAGES += btlogmask
  PRODUCT_PACKAGES += btconfig
  PRODUCT_PACKAGES += libbtpcm
  PRODUCT_PACKAGES += libbtsniff
  PRODUCT_PACKAGES += mtkbt
  PRODUCT_PACKAGES += bluetooth.blueangel
  PRODUCT_PACKAGES += audio.a2dp.blueangel
  PRODUCT_PACKAGES += pppd_btdun
endif

ifeq ($(strip $(MTK_FACTORY_RESET_PROTECTION_SUPPORT)),yes)
  PRODUCT_PROPERTY_OVERRIDES += ro.frp.pst=emmc@frp
endif

ifeq ($(strip $(MTK_SHARED_SDCARD)),yes)
ifeq ($(strip $(MTK_2SDCARD_SWAP)),yes)
PRODUCT_COPY_FILES += device/mediatek/mt8127/init.ssd_nomuser.rc:root/init.ssd_nomuser.rc
else
PRODUCT_COPY_FILES += device/mediatek/mt8127/init.ssd.rc:root/init.ssd.rc
endif
else
PRODUCT_COPY_FILES += device/mediatek/mt8127/init.no_ssd.rc:root/init.no_ssd.rc
endif

PRODUCT_COPY_FILES += $(LOCAL_PATH)/enableswap.sh:root/enableswap.sh

# perfService
PRODUCT_PACKAGES += libperfservice
PRODUCT_PACKAGES += libperfservice_test
PRODUCT_PACKAGES += libperfservicenative
PRODUCT_PACKAGES += perf_native_test
PRODUCT_PACKAGES += perfservapplist.txt
PRODUCT_PACKAGES += perfservtouchfilter.txt
PRODUCT_PACKAGES += perfservscntbl.txt
PRODUCT_PACKAGES += perfservboosttbl.txt

#inherit common platform
$(call inherit-product,device/mediatek/common/device.mk)

#inherit prebuilt
$(call inherit-product-if-exists, vendor/mediatek/mt8127/device-vendor.mk)

ifeq ($(strip $(MTK_FILEMANAGER_APP)), yes)
  PRODUCT_PACKAGES += FileManager
endif

ifneq ($(strip $(MTK_LCM_PHYSICAL_ROTATION)),)
  PRODUCT_PROPERTY_OVERRIDES += ro.sf.hwrotation=$(MTK_LCM_PHYSICAL_ROTATION)
endif

ifeq ($(strip $(MTK_EMMC_SUPPORT)), yes)
  PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.mount.fs=EXT4
else
  ifeq ($(strip $(MTK_NAND_UBIFS_SUPPORT)), yes)
    PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.mount.fs=UBIFS
  else
    PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.mount.fs=YAFFS
  endif
endif

ifeq ($(strip $(MTK_NAND_UBIFS_SUPPORT)),yes)
  PRODUCT_PACKAGES += mkfs_ubifs
  PRODUCT_PACKAGES += ubinize
  PRODUCT_PACKAGES += mtdinfo
  PRODUCT_PACKAGES += ubiupdatevol
  PRODUCT_PACKAGES += ubirmvol
  PRODUCT_PACKAGES += ubimkvol
  PRODUCT_PACKAGES += ubidetach
  PRODUCT_PACKAGES += ubiattach
  PRODUCT_PACKAGES += ubinfo
  PRODUCT_PACKAGES += ubiformat
endif

ifeq ($(strip $(MTK_IN_HOUSE_TEE_SUPPORT)),yes)
PRODUCT_PACKAGES += keystore.mt8127
PRODUCT_PACKAGES += gatekeeper.mt8127
endif

###for hdcp tx
ifeq ($(strip $(MTK_WFD_HDCP_TX_SUPPORT)), yes)
  PRODUCT_PACKAGES += libstagefright_hdcptx
  PRODUCT_PACKAGES += liburee_meta_drmkeyinstall_v2
endif

#### hdcp rx
ifeq ($(strip $(MTK_WFD_HDCP_RX_SUPPORT)), yes)
  PRODUCT_PACKAGES += libstagefright_hdcprx
  PRODUCT_PACKAGES += liburee_meta_drmkeyinstall_v2
endif

###for key manager (KM)
########################### 1 EMMC #####################################
######## /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/kb   ####
######## /dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/dkb  ####
########################### 2 NAND #####################################
######################### /dev/kb   ####################################
######################### /dev/dkb  ####################################

ifeq ($(strip $(MTK_DRM_KEY_MNG_SUPPORT)),yes)
  PRODUCT_PACKAGES += kisd
  PRODUCT_PACKAGES += liburee_meta_drmkeyinstall_v2

  ifeq ($(strip $(MTK_EMMC_SUPPORT)), yes)
    ADDITIONAL_DEFAULT_PROPERTIES += ro.mtk_key_manager_kb_path=2
    PRODUCT_PROPERTY_OVERRIDES += ro.mtk_key_manager_kb_path=2
  else
    ADDITIONAL_DEFAULT_PROPERTIES += ro.mtk_key_manager_kb_path=2
    PRODUCT_PROPERTY_OVERRIDES += ro.mtk_key_manager_kb_path=2
  endif

endif


PRODUCT_PROPERTY_OVERRIDES += ro.topwise.version.release=$(shell cat version_babyd/version.inc)

#for root_check
PRODUCT_PACKAGES += root_checker
