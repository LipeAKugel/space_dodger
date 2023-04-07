/// @description 

// Upgrade the bullet when a upgrade is picked up.
audio_play_sound(snd_upgrade,1,false);
bullet_upgraded = true;
timer_bullet_upgr = 300;

// Destroy the bullet upgrade instance.
with (other) {
	instance_destroy()
}


