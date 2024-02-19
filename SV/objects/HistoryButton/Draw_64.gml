/// @description Insert description here
// You can write your code in this editor


if (open) {
	draw_set_color(c_black)
	draw_set_font(InvFont)
	for (var i = 0; i < array_length(textObj.dialog.pastDialogs); ++i;) {
		var item = textObj.dialog.pastDialogs[i];
		draw_text_ext(450,200+(i*50),item.name+": "+item.message,36,display_get_gui_width()-500)
	}
	
}