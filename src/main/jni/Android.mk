LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := pl_droidsonroids_gif
LOCAL_CFLAGS := -Ofast
#-DDEBUG
LOCAL_LDLIBS := \
	-ljnigraphics \
	-llog \

LOCAL_SRC_FILES := \
	drawing.c \
	gif.c \
	metadata.c \
	memset32_neon.S \
	bitmap.c \
	open_close.c \
	decoding.c \
	exception.c \
	surface_common.c \
	time.c \
	control.c \
	memset.arm.S \
	giflib/dgif_lib.c \
	giflib/gifalloc.c \


include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := pl_droidsonroids_gif_surface
LOCAL_CFLAGS := -Ofast
#-DDEBUG
LOCAL_LDLIBS := \
	-landroid

LOCAL_SRC_FILES := \
	surface.c \

LOCAL_SHARED_LIBRARIES := pl_droidsonroids_gif
include $(BUILD_SHARED_LIBRARY)