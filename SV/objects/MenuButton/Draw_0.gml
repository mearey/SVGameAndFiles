/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_set_halign(fa_center);
draw_set_font(SystemFont)
if sprite_index == MainMenuButtonPressed {
	draw_set_color($bdddd0)
} else {
	draw_set_color($d5f7e9)
}
draw_text(x+sprite_width/2+17,y+sprite_height/2-25,text)