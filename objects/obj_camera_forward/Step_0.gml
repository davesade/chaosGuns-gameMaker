/// @description Follows player object, zooming

if (keyboard_check_pressed(ord("Z"))) {
	zoom++
	if (zoom > max_zoom) zoom = 1
	window_set_size(ideal_width * zoom, ideal_height * zoom)
	surface_resize(application_surface, ideal_width * zoom, ideal_height * zoom)
	alarm[0]=1
}

var zoom_speed = 0.1
if (keyboard_check(vk_up)) view_zoom += zoom_speed

if (keyboard_check(vk_down)) view_zoom -= zoom_speed

view_zoom = clamp(view_zoom, 1, view_max_zoom)

// View zoom only resizes certain elements of the screen, not whole screen... weird
surface_resize(application_surface, ideal_width * view_zoom, ideal_height * view_zoom);

if instance_exists(obj_parent_player) {
	var playersAngle = -obj_parent_player.direction
	//var behindX = obj_parent_player.x - ideal_width / 2 + lengthdir_x(10,playersAngle)
	//var behindY = obj_parent_player.y - ideal_height / 2 - lengthdir_y(10,playersAngle)
	camera_set_view_angle(CAMERA, point_direction(obj_parent_player.x, obj_parent_player.y, mouse_x, mouse_y) + 90)
	obj_parent_player.direction = point_direction(obj_parent_player.x, obj_parent_player.y, mouse_x, mouse_y)
	camera_set_view_pos(CAMERA, obj_parent_player.x, obj_parent_player.y)
}