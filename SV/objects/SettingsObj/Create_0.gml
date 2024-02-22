/// @description Insert description here
// You can write your code in this editor

//create sliders here
masterVolumeSlider = instance_create_depth(window_get_width()/2-250,window_get_height()/2-200,-1,Slider)
masterVolumeSlider.width = 500
masterVolumeSlider.val = global.audioLevel*100
masterVolumeSlider.id_ = "masterVolume"

musicVolumeSlider = instance_create_depth(window_get_width()/2-250,window_get_height()/2-25,-1,Slider)
musicVolumeSlider.val = global.musicLevel*100
musicVolumeSlider.width = 500
musicVolumeSlider.id_ = "musicVolume"

SFXVolumeSlider = instance_create_depth(window_get_width()/2-250,window_get_height()/2+150,-1,Slider)
SFXVolumeSlider.val = global.sfxLevel*100
SFXVolumeSlider.width = 500
SFXVolumeSlider.id_ = "SFXVolume"

applybutton = instance_create_depth(window_get_width()/2-275,window_get_height()/2+300,-1,ApplyButton)
applybutton.text = "Confirm and exit"