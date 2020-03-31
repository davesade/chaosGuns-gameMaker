sprite_index = sprite_idle
image_speed = 0

// Set character rotation following the mouse
image_angle = point_direction(x, y, mouse_x, mouse_y);
direction = point_direction(x, y, mouse_x, mouse_y);
// Movement - check for collisions
targetX = (input_right - input_left) * 5
targetY = (input_down - input_up) * 5

if (targetX != 0 || targetY != 0) {
	//var check = (!scr_checkCollision(targetX,targetY,collision_map_id))
	//scr_trace(check)
	if (!scr_checkCollision(targetX,targetY,collision_map_id)) {
		image_speed = 1
		x += (input_right - input_left) * characterSpeed
		y += (input_down - input_up) * characterSpeed
	} else {
		targetX = 0
		targetY = 0
	}
}

// Shooting only if holding actual gun
if (weapon > 1) {
	scr_reload()
	scr_weapon_cooldown()
	
	var attack;
	attack = mouse_check_button(mb_left);
	if (attack && canshoot && canMelee) {	
		if (weapon.clipCapacity > 0) {
			weapon.clipCapacity -= 1
			canshoot = false;
			reloading = 0
			state = STATE.attacking;
			// Shooting has a priority above melee
			with (weapon) { event_user(0) }
			return
		}
	}
}

// Melee attack only if one hold melee weapon
if (meleeWeapon > 1) {
	scr_melee_cooldown()
	if (canMelee && canshoot) {
		if (distance_to_object(obj_parent_enemy) < meleeWeapon.meleeDistance) {
			canMelee = false
			reloading = 0 // Melee cancels reloading, nasty!
			state = STATE.melee
		}
	}
}

scr_lose_stagger()