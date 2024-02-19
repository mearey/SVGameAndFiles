// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Notification(img, message, description){
	notif = instance_create_layer(0,0,"UITop",NotificationObj)
	notif.img = img
	notif.message = message
	notif.description = description
}