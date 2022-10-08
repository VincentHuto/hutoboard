# MCU name
MCU = atmega32u4
BOOTLOADER = caterina

LTO_ENABLE = yes
MOUSEKEY_ENABLE = yes        # Mouse keys
EXTRAKEY_ENABLE = yes       # Audio control and System control
SPLIT_KEYBOARD = yes
UNICODE_ENABLE = yes
OLED_ENABLE = yes
OLED_DRIVER_ENABLE = yes
OLED_DRIVER = SSD1306
WPM_ENABLE = yes
MAGIC_ENABLE = no
SLEEP_LED_ENABLE = no       # Breathing sleep LED during USB suspend
RGBLIGHT_ENABLE    = no  # Enable keyboard RGB underglow
EXTRAFLAGS += -flto

#SRC += analog.c
#SRC += thumbstick.c