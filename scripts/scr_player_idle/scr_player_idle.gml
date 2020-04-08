sprite_index = sprite_idle
image_speed = 0

// Set character rotation following the mouse
image_angle = point_direction(x, y, mouse_x, mouse_y)
direction = image_angle

// Movement - check for collisions
var seconds_passed = delta_time / 1000000;
var move_speed_this_frame = characterSpeed * seconds_passed;

targetX = 0;
targetY = 0;
 
for ( var i = 0; i < array_length_1d(movement_inputs); i++){
    var this_key = movement_inputs[i];
    if keyboard_check(this_key) {
        var this_angle = i*90;
        targetX += lengthdir_x(1, this_angle);
        targetY += lengthdir_y(1, this_angle);
    }
}
 
var moving = ( point_distance(0,0,targetX,targetY) > 0 );
if moving  {
    var move_dir = point_direction(0,0,targetX,targetY);
	scr_move(move_speed_this_frame,  move_dir);
	image_speed = 1
}


// Shooting only if holding actual gun
if (weapon > 0) {
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
if (meleeWeapon > 0) {
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