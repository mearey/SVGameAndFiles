/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(ord("P")) {
    paused = !paused;
    if paused == false {
        instance_activate_all();
        surface_free(paused_surf);
            paused_surf = -1;
			
    }
}

if paused == true {
	if !surface_exists(paused_surf) {
		if paused_surf == -1 {
	        instance_deactivate_all(true);
	    }
	    paused_surf = surface_create(room_width, room_height);
	    surface_set_target(paused_surf);
	    draw_surface(application_surface, 0, 0);
	    surface_reset_target();
	}
}