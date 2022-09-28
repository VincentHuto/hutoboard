#include "status.h"
#include QMK_KEYBOARD_H

void status_render_layer(uint8_t x, uint8_t y) {
  oled_set_cursor(x, y);
  uint8_t layer = get_highest_layer(layer_state);
  oled_write("Layer ", false);
  oled_write(get_u8_str(layer, '0'), false);
}

void status_render_caps_lock(uint8_t x, uint8_t y) {
  led_t led_usb_state = host_keyboard_led_state();

  oled_set_cursor(x, y);
  if (led_usb_state.caps_lock) {
    oled_write("CPSLK", true);
  } else {
    oled_write("     ", false);
  }
}