/// @description Insert description here
// You can write your code in this editor

image_yscale = verticalSize

if (verticalSize <= 1 and !closing) {
	verticalSize += 0.04
} else if (verticalSize >= 0.2 and closing) {
	verticalSize -= 0.04
}