# Copyright 2017 The MoKee Open Source Project

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_IS_HOST_MODULE := true
LOCAL_MODULE := libedify-host
LOCAL_ADDITIONAL_DEPENDENCIES := bootable/recovery/edify/Android.mk
LOCAL_C_INCLUDES += bootable/recovery
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_CLANG := true
LOCAL_SRC_FILES := builtins.cpp edify_checker.cpp
LOCAL_MODULE := edify_checker
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_C_INCLUDES += bootable/recovery
LOCAL_STATIC_LIBRARIES += libedify-host

include $(BUILD_HOST_EXECUTABLE)