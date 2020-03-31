sprite_index = sprite_idle
image_speed = 0
speed = 0

//scr_checkAround()


// SPAWN collision lines

for (var i = 0; i < array_length_1d(detectionLines); i++){
	var targetX = x + lengthdir_x(detectionDistance, direction + detectionLines[i])
	var targetY = y + lengthdir_y(detectionDistance, direction + detectionLines[i])
	if (collision_line( x, y, targetX, targetY, obj_parent_player, true, true )) {
		state = STATE.alerted
		return
	}
	if (collision_line( x, y, targetX, targetY, obj_parent_bullet, true, true )) {
		pointOfInterestX = targetX
		pointOfInterestY = targetY
		state = STATE.interested
	}
}

//// HERE ADD generalized "pointOfInterest" profile
//if (collision_circle(x, y, detectionDistance, obj_parent_player, false, true)) {
//	state = STATE.alerted	
//}

// Randomly rotate - for now

