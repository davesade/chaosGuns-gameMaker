/// @description Follows player object, zooming

if (keyboard_check_pressed(ord("Z"))) {
	zoom++
	if (zoom > max_zoom) zoom = 1
	window_set_size(ideal_width * zoom, ideal_height * zoom)
	surface_resize(application_surface, ideal_width * zoom, ideal_height * zoom)
	alarm[0]=1
}

if (keyboard_check_pressed(ord("B"))) {
	if (global.debug == true) global.debug = false else global.debug = true
}


var zoom_speed = 0.1
if (keyboard_check(vk_up)) view_zoom += zoom_speed

if (keyboard_check(vk_down)) view_zoom -= zoom_speed

view_zoom = clamp(view_zoom, 1, view_max_zoom)

// View zoom only resizes certain elements of the screen, not whole screen... weird
surface_resize(application_surface, ideal_width * view_zoom, ideal_height * view_zoom);

if instance_exists(obj_parent_player) {
	var behindX = obj_parent_player.x - ideal_width / 2
	var behindY = obj_parent_player.y - ideal_height / 2
	// Special effect on sniping
	if (obj_parent_player.weapon.sniperShot) {
		for (var i = 0; i < instance_number(obj_parent_bullet); ++i;)
		    {
		    sniperBullet[i] = instance_find(obj_parent_bullet,i);
				if (sniperBullet[i].sniperShot && sniperBullet[i].owner == obj_parent_player.id) {
					behindX = sniperBullet[i].x - ideal_width / 2
					behindY = sniperBullet[i].y - ideal_height / 2
				}
		    }
	}

	camera_set_view_pos(CAMERA, behindX, behindY)
} else {
	camera_set_view_pos(CAMERA, 0, 0)
}

// Reset the game
var resetKey
resetKey = keyboard_check_pressed(ord("R"));
if (resetKey) {
	game_restart();
}