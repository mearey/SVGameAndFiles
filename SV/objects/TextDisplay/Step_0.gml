/// @description Insert description here
// You can write your code in this editor

if (!showing_dialog) {
	
	if (dialog.count() <= 0) {
		instance_destroy();
		return;
	}
		
	current_dialog = dialog.pop();

	index = 0
	if (global.fastForward) {
		alarm[0] = interval/2
	} else {
		alarm[0] = interval
	}
	showing_dialog = true;
	
	//spawn character if they dont exist
	if (current_dialog.character != pointer_null) {
		if (!instance_exists(current_dialog.character)) {
			if (characterCount > 1) {
				with (Character) {
					if self.image_xscale = 1 {
						instance_destroy(self)
					}
				}
				characterCount -= 1
			} 
			var newChar = instance_create_layer(0,0,"Instances",current_dialog.character)
			characterCount += 1
			if (global.flippedChar == false) {
					newChar.image_xscale = -1;
					newChar.x = 1880;
					global.flippedChar = true;
			} else {
				newChar.x = 40;
			}
		}
	}
} else if (!global.auto) {
	if ((keyboard_check_released(key_next) or (mouse_check_button_released(mb_any) and mouse_y >= 800)) and (!keyboard_check_released(vk_escape))) {
		if (index == string_length(current_dialog.message)) { 
			//advance to next dialogue
			if (!logs.visible) {
				advanceDialogue();
			}
		} else {
			//draw current dialogue fully
			index = string_length(current_dialog.message)
		}
	} 
} else {
	if (index == string_length(current_dialog.message)) {
		//advance to next dialogue for autoplay
		autoplayTimer-=1
		if (autoplayTimer<=0) {
			advanceDialogue();
			autoplayTimer = 50;
		}
	}
}

