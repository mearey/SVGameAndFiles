/// @description Insert description here
// You can write your code in this editor

if (paused) {
	draw_surface(paused_surf, 0, 0)
	draw_set_alpha(0.75)
	draw_set_color(c_black)
	draw_rectangle(0,0,display_get_width(),display_get_height(),false)
	draw_set_alpha(1)
}