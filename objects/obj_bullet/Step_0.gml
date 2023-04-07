/// @description

speed = 5;

if obj_nave.bullet_upgraded {
	image_xscale = 1.5;
	image_yscale = 1.5;
}

if x <= 0 || x >= room_width || y <= 0 || y >= room_height {
	instance_destroy();
}
