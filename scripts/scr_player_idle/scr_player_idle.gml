sprite_index = sprite_idle
image_speed = 0

// Set character rotation following the mouse
image_angle = point_direction(x, y, mouse_x, mouse_y);

// Movement - check for collisions
targetX = (input_right - input_left) * characterSpeed
targetY = (input_down - input_up) * characterSpeed

if (targetX != 0 || targetY != 0) {
	if (!scr_checkCollision(targetX,targetY,collision_map_id)) {
		image_speed = 1
		x += targetX
		y += targetY
	} else {
		targetX = 0
		targetY = 0
	}
}

// Shooting only if holding actual gun
if (weapon) {
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
			return
		}
	}
}

// Melee attack only if one hold melee weapon
if (meleeWeapon) {
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