include $(CLEAR_VARS)

LOCAL_SRC_FILES := libcutils/strdup16to8.cpp libcutils/strdup8to16.cpp
LOCAL_MODULE := libcutils_shim
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libcutils
LOCAL_VENDOR_MODULE := true

include $(BUILD_SHARED_LIBRARY)
