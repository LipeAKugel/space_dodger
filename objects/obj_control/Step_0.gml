/// @description

if room == rm_game {
	shield_upgr_delay -= 1;
	bullet_upgr_delay -= 1;
	rock_spawn_timer -= 1;

	if shield_upgr_delay <= 0 {
		if instance_exists(obj_shield_upgr) == false {
			instance_create_layer(irandom_range(0,room_width),
								  irandom_range(0,room_height),
								  "Instances",obj_shield_upgr);
			shield_upgr_delay = irandom_range(300,600);
		}
	}

	if bullet_upgr_delay <= 0 {
		if instance_exists(obj_bullet_upgr) == false {
			instance_create_layer(irandom_range(0,room_width),
								  irandom_range(0,room_height),
								  "Instances",obj_bullet_upgr);
			bullet_upgr_delay = irandom_range(300,600);
		}
	}
	
	// Spawn a big or medium asteroid after the timer runs out.
	if rock_spawn_timer <= 0 {
		// Spawn the asteroid at one of the screen's horizontal borders.
		if choose("big","medium") == "big" {
			var spw_big_rock = instance_create_layer(choose(0,display_get_gui_width()),
													 irandom_range(0,display_get_gui_height()),
													 "Instances",obj_rock_big);
		} else {
			var spw_medium_rock = instance_create_layer(choose(0,display_get_gui_width()),
													 irandom_range(0,display_get_gui_height()),
													 "Instances",obj_rock_medium);
		}
		
		rock_spawn_timer = irandom_range(600,1200);
	}
}
