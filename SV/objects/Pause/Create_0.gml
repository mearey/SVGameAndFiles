/// @description Insert description here
// You can write your code in this editor

paused = false;
paused_surf = -1;

function Pausescript() {
	paused = !paused;
    if paused == false {
        instance_activate_all();
        surface_free(paused_surf);
            paused_surf = -1;
		instance_destroy(PauseMenuObj)
    } else {
		instance_create_depth(0,0,0,PauseMenuObj)
	}
	if paused == true {
	if !surface_exists(paused_surf) {
		if paused_surf == -1 {
	        instance_deactivate_all(true);
			instance_activate_object(PauseMenuObj)
			instance_activate_object(SettingsButton)
			instance_activate_object(PauseButtonObj)
			instance_activate_object(SaveButton)
	    }
	    paused_surf = surface_create(room_width, room_height);
	    surface_set_target(paused_surf);
	    draw_surface(application_surface, 0, 0);
	    surface_reset_target();
	}
}
}