LOCAL_PATH := $(call my-dir)


ifeq ($(BOARD_MAGISK_INIT),true)

include $(CLEAR_VARS)
LOCAL_MODULE       := magiskinit
LOCAL_MODULE_TAGS  := optional

ifndef $(MAGISK_VERSION)
MAGISK_VERSION := 23.0
endif

$(shell cp $(LOCAL_PATH)/magiskinit-$(MAGISK_VERSION)-$(TARGET_ARCH) $(PRODUCT_OUT)/magiskinit)

endif

