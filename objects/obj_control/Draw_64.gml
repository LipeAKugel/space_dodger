/// @description

if room == rm_game {
	draw_set_halign(fa_left);
	draw_set_font(fnt_main);

	c1 = make_color_rgb(255,100,100);
	draw_text_color(20,20,"HP: " + string(obj_nave.life),c1,c1,c1,c1,1);
	draw_text_color(20,50,"SCORE: " + string(obj_control.g_score),c_white,c_white,c_white,c_white,1);
}

