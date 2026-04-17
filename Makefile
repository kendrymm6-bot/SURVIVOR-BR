DEBUG = 0
FINALPACKAGE = 1
FOR_RELEASE = 1

# Arquitecturas para iPhone 14 y superiores
export ARCHS = arm64 arm64e
TARGET = iphoneos:clang:latest:15.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SURVIVOR_BR

# Aquí incluimos el Tweak y la interfaz del menú
SURVIVOR_BR_FILES = Tweak.x Menu.mm
SURVIVOR_BR_CFLAGS = -fobjc-arc -w

# Vinculamos con el proceso de Free Fire
SURVIVOR_BR_LDFLAGS = -lsubstrate

include $(THEOS_MAKE_PATH)/tweak.mk
