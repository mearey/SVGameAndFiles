/// @description Insert description here
// You can write your code in this editor

InventoryAdd(item)
window_set_cursor(cr_default)
instance_destroy()
if (inv.visible) {
	CreateUseButtons();
}

part_system_destroy(partsys)