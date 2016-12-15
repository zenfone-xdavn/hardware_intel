LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	list.c \
	queue.c \
	module.c \
	thread.cpp \
	workqueue.cpp \
	audio_parser.c

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := libwrs_omxil_utils

LOCAL_CFLAGS :=

LOCAL_CPPFLAGS :=

LOCAL_LDFLAGS :=

LOCAL_SHARED_LIBRARIES :=

LOCAL_C_INCLUDES := \
	$(WRS_OMXIL_CORE_ROOT)/utils/inc

LOCAL_C_INCLUDES += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include

LOCAL_CFLAGS += -Werror

LOCAL_ADDITIONAL_DEPENDENCIES := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr

include $(BUILD_STATIC_LIBRARY)
