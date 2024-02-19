/// @description Insert description here
// You can write your code in this editor
draw_set_font(InvFont)
for (var i = 0; i < array_length(global.inventory); ++i) {
	var item = global.inventory[i];
	
	draw_sprite_ext(item.sprite,0,x,y+(52*i),0.5,0.5,0,c_white,1)
	draw_text(x+70,y+(52*i),item.name)
}