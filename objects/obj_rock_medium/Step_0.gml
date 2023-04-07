/// @description
move_wrap(true, true, 0);

image_angle += rotac;

if vida <= 0 {
	audio_play_sound(snd_rock_exploding,1,false);
	obj_control.g_score += 30;
	repeat(3) {
		instance_create_layer(x,y,"Instances",obj_rock_small)
	}
	// Create debris when destroyed.
	repeat(5) {
		instance_create_layer(x,y,"Instances",obj_debris);	
	}
	instance_destroy();
}

 