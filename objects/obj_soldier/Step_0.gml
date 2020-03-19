// State refresh

switch(state) {
	case ENEMYSTATE.idle:
		sprite_index = spr_bigmama_walk
		image_speed = 0
		if (collision_circle(x, y, detectionDistance, obj_player, false, true)) {
			state=ENEMYSTATE.alerted	
		}
	break
	// TODO: Walking / idling along some PATH from game maker
	case ENEMYSTATE.walking:
		sprite_index = spr_bigmama_walk
		image_speed = 1
	break
	case ENEMYSTATE.alerted:
		sprite_index = spr_bigmama_walk
		image_speed = 1
		image_angle = point_direction(x, y, obj_player.x, obj_player.y)
		// Walk to player object
		direction = point_direction(x, y, obj_player.x, obj_player.y)
		targetX = lengthdir_x(10, direction)
		targetY = lengthdir_y(10, direction)
		if (!scr_checkCollision(targetX,targetY,collision_map_id)) {speed = walkSpeed} else {speed = 0}
		if (speed == 0) {image_speed = 0}
		if (distance_to_object(obj_player) < weapon.shotDistance) {
			state = ENEMYSTATE.attacking
		}
		attentionTime += 1
		if (attentionTime >= maxAttentionTime) {
			state = ENEMYSTATE.idle
			attentionTime = 0
		}
	break
	case ENEMYSTATE.attacking:
		if (canshoot) {	
			if (weapon.clipCapacity > 0) {
				weapon.clipCapacity -= 1
				sprite_index = spr_bigmama_attack
				image_speed = 1
				speed = 0
				canshoot = false;
				scr_shootBullet(self, obj_player.x, obj_player.y)
			}
		}
		// TODO: RELOADING?!
	
	break
}

// Weapon cooldown
if (!canshoot) {
	state = ENEMYSTATE.alerted
	currentCooldown += 1
	if (currentCooldown >= weapon.cooldown) {
		canshoot = true
		currentCooldown = 0
	}
}

// In case the health is below zero, enemy is removed from the game
// Improve with something more creative
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health < 0)
{
	instance_destroy();
}