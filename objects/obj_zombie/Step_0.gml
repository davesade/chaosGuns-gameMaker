// State refresh

switch(state) {
	case ENEMYSTATE.idle:
		sprite_index = spr_zombie_walk
		image_speed = 0
		if (collision_circle(x, y, detectionDistance, obj_player, false, true)) {
			state=ENEMYSTATE.alerted	
		}
	break
	// TODO: Walking / idling along some PATH from game maker
	case ENEMYSTATE.walking:
		sprite_index = spr_zombie_walk
		image_speed = 1
	break
	case ENEMYSTATE.alerted:
		sprite_index = spr_zombie_walk
		image_speed = 1
		image_angle = point_direction(x, y, obj_player.x, obj_player.y)
		// Walk to player object
		direction = point_direction(x, y, obj_player.x, obj_player.y)
		targetX = lengthdir_x(5, direction)
		targetY = lengthdir_y(5, direction)
		if (!scr_checkCollision(targetX,targetY,collision_map_id)) {speed = walkSpeed} else {speed = 0}
		if (speed == 0) {image_speed = 0}
		if (distance_to_object(obj_player) < attackRange) {
			state = ENEMYSTATE.attacking
		}
		attentionTime += 1
		if (attentionTime >= maxAttentionTime) {
			state = ENEMYSTATE.idle
			attentionTime = 0
		}
	break
	case ENEMYSTATE.attacking:
		if (currentCooldown == 0) {
			if (distance_to_object(obj_player) < attackRange) {
				obj_player.__dnd_health -= attackPower
			}
		}
		currentCooldown +=1
		sprite_index = spr_zombie_attack
		if (currentCooldown > attackCooldown) {
			state = ENEMYSTATE.alerted
			currentCooldown = 0
		}
		speed = 0
		attentionTime = 0
	break
}