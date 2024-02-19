/// @description Insert description here
// You can write your code in this editor

if (open and inv.visible == false) {
	inv.closing = false
	inv.visible = true;
	CreateUseButtons();
} else if (!open and inv.verticalSize <= 0.2) {
	inv.visible = false;
	RemoveUseButtons();
}

if (!open and inv.closing = false) {
	inv.closing = true
}
