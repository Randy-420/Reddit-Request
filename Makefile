DEBUG=0
FINALPACKAGE=1
include $(THEOS)/makefiles/common.mk
export SYSROOT = $(THEOS)/sdks/iPhoneOS14.1.sdk

export ARCHS=arm64 #arm64e
TWEAK_NAME=AppsManagerPatch
AppsManagerPatch_FILES=Tweak.xm ShellRunner.m

include $(THEOS_MAKE_PATH)/tweak.mk
