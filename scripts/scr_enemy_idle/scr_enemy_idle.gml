sprite_index = sprite_idle
image_speed = 0
speed = 0

// HERE ADD generalized "pointOfInterest" profile
if (collision_circle(x, y, detectionDistance, obj_parent_player, false, true)) {
	state = STATE.alerted	
}