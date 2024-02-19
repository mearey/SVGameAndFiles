/// @description Insert description here
// You can write your code in this editor

max_ = 100
val = 0
width = 400

handle = instance_create_depth(x,y,-2,SliderHandleObj)
handle.min_ = x
handle.max_ = x + width - 64

id_ = pointer_null

firstFrame = true