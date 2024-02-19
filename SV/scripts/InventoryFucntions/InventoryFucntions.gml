function InventoryRemove (item) {
	for (var i = 0; i < array_length(global.inventory); ++i) {
		var current = global.inventory[i];
	
		if (current == item) {
			array_delete(global.inventory,i,1)
			break
		}
	}
}

function InventoryAdd(item) {
	Notification(item.sprite,"Got item: " + item.name, "Description: " + item.description)
	array_push(global.inventory,item)
}

function CreateUseButton (item, position) {
	inv = instance_find(Inventory,0)
	button = instance_create_depth(inv.x+250,inv.y+(52*position),0,UseButton)
	global.currentItem = item
	button.action = function () {
			InventoryRemove (global.currentItem)
			RemoveUseButtons()
			CreateUseButtons()
			if (global.currentItem.usage != pointer_null) {	
				room_goto(global.currentItem.usage)
			}
		}
	button.thisItem = global.currentItem
}

function CreateUseButtons () {
	for (var i = 0; i < array_length(global.inventory); ++i) {
		var current = global.inventory[i];
		
		if (current.usage != pointer_null) {
			CreateUseButton(current, i)
		}
	}
}

function RemoveUseButtons () {
	with (UseButton) {instance_destroy();}
}

function placeholder () {
	return;	
}