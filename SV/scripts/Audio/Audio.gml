// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playAudio(audio, priority, loops, music){
	if music {
		var level = (global.musicLevel + global.audioLevel)/2
	} else {
		var level = (global.sfxLevel + global.audioLevel)/2
	}
	
	audio_sound_gain(audio, level, 0)
	audio_play_sound(audio,priority, loops)
}