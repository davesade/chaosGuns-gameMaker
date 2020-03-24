sprite_index = sprite_idle
image_angle = point_direction(x, y, obj_parent_player.x, obj_parent_player.y)
direction = point_direction(x, y, obj_parent_player.x, obj_parent_player.y)
speed = 0; image_speed = 0

// Only move if the distance is above ideal
if (distance_to_object(obj_parent_player) >= idealDistance) {
	// Walk to player object
	targetX = lengthdir_x(5, direction)
	targetY = lengthdir_y(5, direction)
	if (!scr_checkCollision(targetX,targetY,collision_map_id)) {speed = walkSpeed; image_speed = 1}
}

// If enemy holds a long range weapon, it will go to shooting mode
if (weapon.shotDistance > 0) {
	if (distance_to_object(obj_parent_player) < weapon.shotDistance) {
		state = ENEMYSTATE.attacking
	}
}

// In case enemy holds only close range weapon, it will go to melee mode
if (weapon.meleeDistance > 0) {
	if (distance_to_object(obj_parent_player) < weapon.meleeDistance) {
		state = ENEMYSTATE.melee
	}
}

// Staying too long in this state without attacking will result lost of interest in player
attentionTime += 1
if (attentionTime >= maxAttentionTime) {
	state = ENEMYSTATE.idle
	attentionTime = 0
}