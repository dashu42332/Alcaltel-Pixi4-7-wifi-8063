# Use the non-open-source part, if present
-include vendor/topwise/kr070/BoardConfigVendor.mk

# Use the 8127 common part
include device/mediatek/mt8127/BoardConfig.mk

#Config partition size
# include device/topwise/kr070/partition_size.mk
-include $(MTK_PTGEN_OUT)/partition_size.mk
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 4096

#define get-partition-size
#$(shell device/mediatek/build/build/tools/partition/get-partition-size.py device/topwise/kr070/custom/partition/partition.xml $(1) $(2))
#endef

include device/topwise/$(MTK_TARGET_PROJECT)/ProjectConfig.mk

MTK_INTERNAL_CDEFS := $(foreach t,$(AUTO_ADD_GLOBAL_DEFINE_BY_NAME),$(if $(filter-out no NO none NONE false FALSE,$($(t))),-D$(t)))
MTK_INTERNAL_CDEFS += $(foreach t,$(AUTO_ADD_GLOBAL_DEFINE_BY_VALUE),$(if $(filter-out no NO none NONE false FALSE,$($(t))),$(foreach v,$(shell echo $($(t)) | tr '[a-z]' '[A-Z]'),-D$(v))))
MTK_INTERNAL_CDEFS += $(foreach t,$(AUTO_ADD_GLOBAL_DEFINE_BY_NAME_VALUE),$(if $(filter-out no NO none NONE false FALSE,$($(t))),-D$(t)=\"$($(t))\"))

COMMON_GLOBAL_CFLAGS += $(MTK_INTERNAL_CDEFS)
COMMON_GLOBAL_CPPFLAGS += $(MTK_INTERNAL_CDEFS)

BOARD_USES_MTK_AUDIO := true


ifneq ($(CUSTOM_SEC_AUTH_SUPPORT),yes)
##TARGET_RECOVERY_UPDATER_EXTRA_LIBS += libsbauth
# below to resolve the recursive linking problem
##TARGET_RECOVERY_UPDATER_EXTRA_LIBS += librecovery_sec_updater_mtk
##TARGET_RECOVERY_UPDATER_EXTRA_LIBS += libsbauth
# above to resolve the recursive linking problem
endif

BOARD_MTK_SYSTEM_SIZE_KB :=1572864
-include device/mediatek/build/build/tools/base_rule_remake.mk
