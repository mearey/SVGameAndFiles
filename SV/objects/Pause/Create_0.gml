/// @description Insert description here
// You can write your code in this editor

paused = false;

function Pausescript() {
	paused = !paused;
    if paused == false {
        
		instance_destroy(PauseMenuObj)
    } else {
		instance_create_depth(100,0,0,PauseMenuObj)
	}
	if paused == true {
		
	}
}