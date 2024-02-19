/// @description Insert description here
// You can write your code in this editor

if (showing_dialog) {
	var text_x = 30;
	var text_y = 820;
	var height = 220;
	var border = 5;
	var padding = 16;
	
	height += padding*2;
	text_x = 290 + (padding*2);
	
	draw_set_color(c_black)
	
	if (current_dialog.sprite != pointer_null) {
		if (current_dialog.sprite == SystemPortrait) {
			font = SystemFont
		} else {
			font = TestFont
		}
		draw_sprite(current_dialog.sprite, round(subimage), 0, 0)
		subimage = (subimage+0.5)%sprite_get_number(current_dialog.sprite)
	}
	draw_set_font(font)	
	//draw character name
	draw_set_color(c_black)
	draw_text_ext(text_x+1, text_y-72+1, current_dialog.name, 72, display_get_gui_width()-400)
	//draw character name
	draw_set_color(c_white)
	draw_text_ext(text_x, text_y-72, current_dialog.name, 72, display_get_gui_width()-400)
	message_ = current_dialog.message
	if (string_count("Internal: ",current_dialog.message)) {
		message_ = string_replace(current_dialog.message, "Internal: ", "")
		draw_set_font(TestFontItallics)
	} else {
		draw_set_font(font)
	}
	draw_set_color(c_black)
	draw_set_alpha(0.5)
	draw_text_ext(text_x+1, text_y+1, string_copy(message_, 1, index), 72, display_get_gui_width()-400)
	
	draw_set_color(c_white)
	draw_set_alpha(1)
	draw_text_ext(text_x, text_y, string_copy(message_, 1, index), 72, display_get_gui_width()-400)
}
