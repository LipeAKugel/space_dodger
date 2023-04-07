/// @description

// Active the shield and create an instance of the shield object.
audio_play_sound(snd_upgrade,1,false);
shield_active = true;
timer_shield_upgr = 300;
instance_create_layer(x,y,"Instances",obj_shield)

// Destroy the shield upgrade instance.
with (other) {
	instance_destroy()
}


