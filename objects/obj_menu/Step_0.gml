/// @description

// Move down if the down key is pressed.
if keyboard_check_pressed(vk_down) {
	op_index++;
	audio_play_sound(snd_menu_move,1,false);
	if op_index > op_max-1 {
		op_index = 0;
	}
}

// Move up if the up key is pressed.
if keyboard_check_pressed(vk_up) {
	op_index--;
	audio_play_sound(snd_menu_move,1,false);
	if op_index < 0 {
		op_index = op_max-1;
	}
}

// Confirm the option if enter is pressed.
if keyboard_check_pressed(vk_enter) {
	audio_play_sound(snd_menu_select,1,false);
	if options[op_index] == "PLAY" {
		room = rm_game;
	} else if options[op_index] == "EXIT"{
		game_end();
	}
}