for (var i = 0; i < array_length_1d(detectionLines); i++){
	var targetX = x + lengthdir_x(detectionDistance, direction + detectionLines[i])
	var targetY = y + lengthdir_y(detectionDistance, direction + detectionLines[i])
	if (collision_line( x, y, targetX, targetY, obj_parent_player, true, true )) {
		pointOfInterestX = obj_parent_player.x
		pointOfInterestY = obj_parent_player.y
		state = STATE.alerted
	} else if (collision_line( x, y, targetX, targetY, obj_parent_bullet, true, true )) {
		pointOfInterestX = targetX
		pointOfInterestY = targetY
		state = STATE.interested
	}
}