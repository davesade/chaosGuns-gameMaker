sprite_index = sprite_idle
image_speed = 1
image_angle = point_direction(x, y, obj_parent_player.x, obj_parent_player.y)
// Walk to player object
direction = point_direction(x, y, obj_parent_player.x, obj_parent_player.y)
targetX = lengthdir_x(5, direction)
targetY = lengthdir_y(5, direction)
if (!scr_checkCollision(targetX,targetY,collision_map_id)) {speed = walkSpeed} else {speed = 0}
if (speed == 0) {image_speed = 0}

// If enemy holds a long range weapon, it will go to shooting mode
if (weapon.shotDistance > 0) {
	if (distance_to_object(obj_parent_player) < weapon.shotDistance) {
		state = ENEMYSTATE.attacking
	}
}

// In case enemy holds only close range weapon, it will go to melee mode
if (meleeDistance > 0) {
	if (distance_to_object(obj_parent_player) < meleeDistance) {
		state = ENEMYSTATE.melee
	}
}

attentionTime += 1
if (attentionTime >= maxAttentionTime) {
	state = ENEMYSTATE.idle
	attentionTime = 0
}