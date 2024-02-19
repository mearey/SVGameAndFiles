/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(MainMenuButton,0,x_,y_,1.4,1,0,c_white,alpha)
draw_sprite_ext(img,0,x_+400,y_+26,1,1,0,c_white,alpha)
draw_set_alpha(alpha)
draw_set_font(InvFont)
draw_text(x_+46,y_+26,message)
draw_text(x_+46,y_+62,description)
draw_set_alpha(1)