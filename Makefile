GO_EASY_ON_ME = 1
include theos/makefiles/common.mk

TWEAK_NAME = SirIcon
SirIcon_FILES = Tweak.xm
SirIcon_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
