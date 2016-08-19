export THEOS_DEVICE_IP=192.168.0.101
export THEOS_DEVICE_PORT=22

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CuteCutHack
CuteCutHack_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 CuteCUT"
