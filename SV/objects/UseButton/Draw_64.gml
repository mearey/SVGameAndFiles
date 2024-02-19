/// @description Insert description here
// You can write your code in this editor
if (hovered) {
	draw_set_color(c_white)
	draw_rectangle(x+64+16,y,x+300,y+200,0)
	draw_set_color(c_black)
	draw_text(x+64+16,y,thisItem.description)
}
