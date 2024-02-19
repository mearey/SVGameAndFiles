// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Dialogue() constructor {
	dialogs = [];
	pastDialogs = [];
	
	add = function(_sprite, _message, _character, _leave, _name, _expression) {
		array_push(dialogs, {
			sprite:_sprite,
			message:_message,
			character:_character,
			leave:_leave,
			name:_name,
			expression: _expression,
		});
	}
	
	pop = function() {
			var _elem = array_first(dialogs);
			array_push(pastDialogs, array_get(dialogs,0));
			array_delete(dialogs, 0 ,1);
			
			return _elem;
	}
	
	count = function() {
		return array_length(dialogs)	
	}
}