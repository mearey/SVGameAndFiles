/// @description Insert description here
// You can write your code in this editor
if (x_ < -40) {
	x_ += 30
} else {
	seen = true
}

if ((seen) and (!leaving0)) {
	alarm[1] = lifespan
	leaving0 = true
}

if ((seen) and (!leaving)) {
	alarm[0] = 100
	leaving = !leaving
}

if (leaving and mouse_x < x_ + 500 and mouse_y < 350 and mouse_y > 200) {
	alarm[0] = 100
}

if (alarm[0]) {
	alpha = alarm[0]/100	
}