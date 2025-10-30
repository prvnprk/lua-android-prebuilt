LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LUA_VERSION := 5.4.8
LOCAL_MODULE := lua
LOCAL_CFLAGS := -D"l_getlocaledecpoint()='.'" -DLUA_ANSI


LOCAL_LUA_SRC := $(LOCAL_PATH)/lua-$(LUA_VERSION)/src

LOCAL_SRC_FILES := \
    $(LOCAL_LUA_SRC)/lapi.c \
    $(LOCAL_LUA_SRC)/lauxlib.c \
    $(LOCAL_LUA_SRC)/lbaselib.c \
    $(LOCAL_LUA_SRC)/lcode.c \
    $(LOCAL_LUA_SRC)/lcorolib.c \
    $(LOCAL_LUA_SRC)/lctype.c \
    $(LOCAL_LUA_SRC)/ldblib.c \
    $(LOCAL_LUA_SRC)/ldebug.c \
    $(LOCAL_LUA_SRC)/ldo.c \
    $(LOCAL_LUA_SRC)/ldump.c \
    $(LOCAL_LUA_SRC)/lfunc.c \
    $(LOCAL_LUA_SRC)/lgc.c \
    $(LOCAL_LUA_SRC)/linit.c \
    $(LOCAL_LUA_SRC)/liolib.c \
    $(LOCAL_LUA_SRC)/llex.c \
    $(LOCAL_LUA_SRC)/lmathlib.c \
    $(LOCAL_LUA_SRC)/lmem.c \
    $(LOCAL_LUA_SRC)/loadlib.c \
    $(LOCAL_LUA_SRC)/lobject.c \
    $(LOCAL_LUA_SRC)/lopcodes.c \
    $(LOCAL_LUA_SRC)/loslib.c \
    $(LOCAL_LUA_SRC)/lparser.c \
    $(LOCAL_LUA_SRC)/lstate.c \
    $(LOCAL_LUA_SRC)/lstring.c \
    $(LOCAL_LUA_SRC)/lstrlib.c \
    $(LOCAL_LUA_SRC)/ltable.c \
    $(LOCAL_LUA_SRC)/ltablib.c \
    $(LOCAL_LUA_SRC)/ltm.c \
    $(LOCAL_LUA_SRC)/lundump.c \
    $(LOCAL_LUA_SRC)/lutf8lib.c \
    $(LOCAL_LUA_SRC)/lvm.c \
    $(LOCAL_LUA_SRC)/lzio.c

LOCAL_C_INCLUDES := $(LOCAL_LUA_SRC)

include $(BUILD_STATIC_LIBRARY)
