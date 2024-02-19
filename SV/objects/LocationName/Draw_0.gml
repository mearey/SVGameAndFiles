/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(alpha)
draw_set_color(c_black)
draw_sprite(LocatonBanner,0,0,0)
draw_text_ext(display_get_gui_width()-400, 90, string_copy(text, 1, index), 72, display_get_gui_width()-232)
draw_set_alpha(1)