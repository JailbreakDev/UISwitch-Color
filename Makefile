include theos/makefiles/common.mk

TWEAK_NAME = SwitchColor
SwitchColor_FILES = Tweak.xm
SwitchColor_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
