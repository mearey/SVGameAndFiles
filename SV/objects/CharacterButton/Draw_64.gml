/// @description Insert description here
// You can write your code in this editor

//TODO CHEANGE THIS TO BE THE CHARACTER FUNCTION
if (open) {
	draw_set_color(c_black)
	draw_set_font(InvFont)
	for (var i = 0; i < array_length(global.characterList); ++i;) {
		if (global.characterList[i].found) {
			draw_text(500, 200+(50*i), global.characterList[i].name)
		} else {
			draw_text(500, 200+(50*i), "???")
		}
	}
}