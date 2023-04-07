/// @description

// MOVING
// Up and down arrow keys move the ship up and down.
if keyboard_check(vk_up){
	speed += acel;
	sprite_index = spr_ship_moving;
} else if keyboard_check(vk_down){
	speed -= acel;
	sprite_index = spr_ship_moving;
} else {
	// Slow the ship down if neither are pressed.
	if speed > 0 {
		speed -= acel;
	} else if speed < 0 {
		speed += acel
	}
	sprite_index = spr_ship_still;
}

// Limit the ship's speed.
if speed >= max_speed {
	speed = max_speed;
} else if speed <= -max_speed {
	speed = -max_speed;
}

// Left and right arrow keys rotate the ship.
if keyboard_check(vk_left){
	rot_speed += rot_acel;
} else if keyboard_check(vk_right){
	rot_speed -= rot_acel;
} else {
	// Slow the rotation if neither are pressed.
	if rot_speed > 0 {
		rot_speed -= rot_acel;
	} else if rot_speed < 0 {
		rot_speed += rot_acel;
	}
}

// Limit the ship's rotation.
if rot_speed >= max_rotation {
	rot_speed = max_rotation;
} else if rot_speed <= -max_rotation {
	rot_speed = -max_rotation;
}

direction += rot_speed;

// Match the angle of the image to the direction the ship is pointing.
image_angle = direction;

// Make the ship wrap around the screen when it reaches the border.
move_wrap(true, true,0);

//FIRING

// Fire a bullet when the space key is pressed.
if keyboard_check_pressed(vk_space) {
	audio_play_sound(snd_firing,1,false);
	var bullet = instance_create_layer(x,y,"Instances",obj_bullet);
	bullet.direction = direction
	bullet.image_angle = direction
}

// Make the ship's opacity vary during invulnerability.
if alarm[0] > 0 {
	if image_alpha <= 0 {
		alpha_add = 0.05;
	} else if image_alpha >= 1 {
		alpha_add = -0.05;
	}
	image_alpha += alpha_add;
} else {
	image_alpha = 1;	
}

// Restart the game if the ship gets destroyed.
if life <= 0 {
	room = rm_endroom;
}

// UPGRADES

if bullet_upgraded {
	if instance_exists(obj_bullet) {
		obj_bullet.damage = bullet_dmg*2;
	}
}
// Remove the bullet upgrade if the timer goes below 0.
if timer_bullet_upgr <= 0 {
	bullet_upgraded = false;	
}

// Remove the shield if the timer goes below 0.
if timer_shield_upgr <= 0 {
	shield_active = false;
}

// TIMERS

timer_shield_upgr -= 1;
timer_bullet_upgr -= 1;
