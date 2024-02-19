/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

with (Slider) {
	if id_ = "musicVolume" {
		global.musicLevel = val/100
	}
	if id_ = "SFXVolume" {
		global.sfxLevel = val/100
	}
	if id_ = "masterVolume" {
		global.audioLevel = val/100
	}
}