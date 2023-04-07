/// @description

// Move right if the right key is pressed.
if keyboard_check_pressed(vk_right) {
	audio_play_sound(snd_menu_move,1,false);
	if index < op_max-1 {
		index++;
	}
}

// Move left if the left key is pressed.
if keyboard_check_pressed(vk_left) {
	audio_play_sound(snd_menu_move,1,false);
	if index > 0 {
		index--;
	}
}

// Confirm the selection if enter is pressed.
if keyboard_check_pressed(vk_enter) {
	audio_play_sound(snd_menu_select,1,false);
	if options[index] == "RESTART" {
		room = rm_game;
	} else if options[index] == "MAIN MENU" {
		room = rm_menu;
	} 
}