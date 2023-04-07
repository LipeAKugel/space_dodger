/// @description

x = obj_nave.x;
y = obj_nave.y;

if image_alpha <= 0 {
		alpha_add = 0.05;
	} else if image_alpha >= 1 {
		alpha_add = -0.05;
}

image_alpha += alpha_add;

if obj_nave.shield_active == false {
	instance_destroy();
}
	


