DEBUG=0
FINALPACKAGE=1
include $(THEOS)/makefiles/common.mk

export ARCHS= armv7 armv7s arm64 arm64e
TWEAK_NAME=AppsManagerPatch
AppsManagerPatch_FILES=Tweak.xm popup.xm

include $(THEOS_MAKE_PATH)/tweak.mk