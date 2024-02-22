/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left)
draw_set_alpha(1)

logs = instance_find(Logs,0)

dialog = new Dialogue();

key_next = vk_anykey;

showing_dialog = false;

current_dialog = {};

alpha = 1;

font = TestFont

subimage = 0

interval = 2

index = 0

autoplayTimer = 50;

characterCount = 0

alarm[0] = interval


function advanceDialogue() {
	//advance to next dialogue
	showing_dialog = false;
	//make character leave if theyare leaving
	if (current_dialog.leave == true) {
		var char = instance_find(current_dialog.character,0)
		if (char.image_xscale == -1) {
			global.flippedChar = false
		}
		instance_destroy(char)
	} else {
		//discover character here
		for (var i = 0; i < array_length(global.characterList); ++i) {
			if global.characterList[i].name == current_dialog.name {
				global.characterList[i].found = true
			}
		}
	}
}
