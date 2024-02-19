/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left)
draw_set_alpha(1)

logs = instance_find(Logs,0)

dialog = new Dialogue();

key_next = vk_anykey;

showing_dialog = false;

current_dialog = {};

alpha = 1;

font = TestFont

subimage = 0

interval = 2

index = 0

autoplayTimer = 50;

characterCount = 0

alarm[0] = interval