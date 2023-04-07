/// @description

var dist = 40
var room_x = display_get_width();
var room_y = display_get_height();
var y_offset = (array_length(options)*dist)/2;
var x1 = room_x/2;
var y1 = room_y/2-y_offset;

draw_set_font(fnt_menu);
draw_set_halign(fa_center);

for (var i=0; i<op_max; i++) {
	if (op_index == i) {
		draw_set_color(c_yellow);
	} else {
		draw_set_color(c_white);
	}
	
	draw_text(x1,(y1+dist*i),options[i]);
}


