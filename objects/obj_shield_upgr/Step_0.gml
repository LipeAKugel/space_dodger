/// @description 

// Fade out and destroy the instance if the timer reaches 0.
if exist_timer <= 0 {
	image_alpha -= 0.05;
	if image_alpha <= 0 {
		instance_destroy();
	}
} else {
	// Fade in animation when the object is created.
	image_alpha += 0.05
}

exist_timer -= 1;


