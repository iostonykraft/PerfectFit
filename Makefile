export ARCHS = armv7 arm64
export TARGET = iphone:clang
FOR_RELEASE=0
GO_EASY_ON_ME=1
include theos/makefiles/common.mk

TWEAK_NAME = PerfectFit
PerfectFit_FILES = Tweak.xm
PerfectFit_LIBRARIES = applist

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += perfectfit
include $(THEOS_MAKE_PATH)/aggregate.mk
