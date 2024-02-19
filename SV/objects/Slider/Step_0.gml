/// @description Insert description here
// You can write your code in this editor
image_xscale = width
handle.max_ = x + width - 64

if firstFrame {
	handle.x = (val*(width-64))/100+x
	firstFrame = false
}

if (id_ != pointer_null) {
	val = round((handle.x - x)/(width-64)*100)
}