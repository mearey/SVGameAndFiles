/// @description Insert description here
// You can write your code in this editor






// Inherit the parent event
event_inherited();

font = SystemFont

active = true

text = "NONE :D"

function drawFunction() {
	draw_self()
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(font)
	if sprite_index == MainMenuButtonPressed {
		draw_set_color($bdddd0)
	} else {
		draw_set_color($d5f7e9)
	}
	draw_text(x+sprite_width/2+17,y+sprite_height/2+4,text)
}