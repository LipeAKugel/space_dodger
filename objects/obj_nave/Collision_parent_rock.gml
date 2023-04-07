/// @description

// Collision with a asteroid

// Check if the shield is active.
if shield_active == false {
	// Damage the ship and asteroid if the ship isn't invencible.
	if alarm[0] <= 0 {
		audio_play_sound(snd_hit,1,false);
		life -= collision_dmg;

		with (other) {
			vida -= obj_nave.dmg_to_rock;
		}
		// Reset the invencibility timer.
		alarm[0] = 180;
	}
}