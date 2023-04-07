/// @description

var ydist = 40;
var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();
var x1 = gui_width/2;
var y1 = gui_height/2-ydist*3;

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_font(fnt_menu);

// Draw the end message and the final score.
draw_text(x1,y1+ydist,"YOU LOST!");
draw_text(x1,y1+ydist*2,"FINAL SCORE: "+string(obj_control.g_score));

for(var i=0; i<op_max; i++) {
	if index == i {
		draw_set_color(c_yellow);	
	} else {
		draw_set_color(c_white);
	}
	
	draw_text((x1-120)+240*i,y1+ydist*5,options[i]);
}


