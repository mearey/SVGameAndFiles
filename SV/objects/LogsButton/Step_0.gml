/// @description Insert description here
// You can write your code in this editor

if (open and logmenu.visible == false) {
	logmenu.visible = true;
	openLogs();
} else if (!open and logmenu.visible = true) {
	logmenu.visible = false;
	closeLogs();
}