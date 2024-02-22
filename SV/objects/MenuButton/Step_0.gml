/// @description Insert description here
// You can write your code in this editor
if (instance_exists(SettingsObj) and text != "Confirm and exit") {
	active = false
	sprite_index = MainMenuButton
} else {
	active = true	
}