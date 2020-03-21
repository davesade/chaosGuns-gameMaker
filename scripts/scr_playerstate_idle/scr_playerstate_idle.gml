sprite_index = sprite_idle
image_speed = 0
// Intended game mechanics - to reload, you have to wait in idle state - cannot reload when walking - subject of change?
if (weapon.maxClipCapacity > weapon.clipCapacity) {
	reloading += 1
	if (reloading >= weapon.reloadTime) {
		weapon.clipCapacity = weapon.maxClipCapacity
		reloading = 0
	}
}


// Set Instance Rotation
image_angle = point_direction(x, y, mouse_x, mouse_y);

// Movement - check for collisions
targetX = (input_right - input_left) * characterSpeed
targetY = (input_down - input_up) * characterSpeed

if (targetX != 0 || targetY != 0) {
	if (!scr_checkCollision(targetX,targetY,collision_map_id)) {
		//state = PLAYERSTATE.walking
		image_speed = 1
		if (distance_to_object(obj_parent_enemy) < 5) { // Make this distance a variable ie. closeRange
			reloading = 0
			state = PLAYERSTATE.melee
		}
		x += targetX
		y += targetY
	} else {
		targetX = 0
		targetY = 0
	}
}

//if (targetX == 0 && targetY == 0) {state = PLAYERSTATE.idle}