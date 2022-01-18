LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE = libperfservice
LOCAL_MODULE_CLASS = SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX = .so
LOCAL_SHARED_LIBRARIES_64 = libc++
LOCAL_MULTILIB = 64
LOCAL_SRC_FILES_64 = arm64/libperfservice.so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE = libperfservice
LOCAL_MODULE_CLASS = SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX = .so
LOCAL_SHARED_LIBRARIES_32 = libc++
LOCAL_MULTILIB = 32
LOCAL_SRC_FILES_32 = arm/libperfservice.so
include $(BUILD_PREBUILT)