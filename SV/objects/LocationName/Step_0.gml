/// @description Insert description here
// You can write your code in this editor
if (alpha < 1 and fadein == 1) {
	alpha += 0.02
} else if (alpha == 1 and fadein == 1) {
	fadein = 2
	alarm[2] = 200
}

if (alpha > 0 and fadein == 2 and test) {
	alpha -= 0.04
}

if (alpha == 0 and fadein == 2) {
	alarm[0] = 100
}