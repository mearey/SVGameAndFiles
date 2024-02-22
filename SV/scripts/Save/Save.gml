// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Save() {
	saveFile = file_text_open_write("Save")
	file_text_write_string(saveFile, "charList: " + json_stringify(global.characterList)+"\n")
	file_text_write_string(saveFile, "nextObjective: " + global.nextObjective+"\n")
	file_text_write_string(saveFile, "inventory: " + json_stringify(global.inventory)+"\n")
	//TODO ADD SAVING OF CURRENT LOCATION
	file_text_write_string(saveFile, "location: " + json_stringify({})+"\n")
	file_text_close(saveFile)
}

function Load() {
	saveFile = file_text_open_write("Save")
	
}