direction = point_direction(x, y, pointOfInterestX, pointOfInterestY)
image_angle = direction
// Try walk in point of interest

var targetX = lengthdir_x(characterSpeed, direction)
var targetY = lengthdir_y(characterSpeed, direction)
if (!scr_checkCollision(targetX,targetY,collision_map_id)) {speed = characterSpeed; image_speed = 1}

// SPAWN collision lines

for (var i = 0; i < array_length_1d(detectionLines); i++){
	var targetX = x + lengthdir_x(detectionDistance, direction + detectionLines[i])
	var targetY = y + lengthdir_y(detectionDistance, direction + detectionLines[i])
	if (collision_line(x, y, targetX, targetY, obj_parent_player, true, true )) {
		state = STATE.alerted
		return
	}
	if (collision_line(x, y, targetX, targetY, obj_parent_bullet, true, true )) {
		pointOfInterestX = targetX
		pointOfInterestY = targetY
		state = STATE.interested
	}
}

scr_lose_interest()