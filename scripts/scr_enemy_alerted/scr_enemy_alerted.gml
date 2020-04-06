sprite_index = sprite_idle
speed = 0; image_speed = 0

scr_detectionLines()
direction = scr_setTarget(direction, pointOfInterestX, pointOfInterestY);
image_angle = direction;

// Movement - check for collisions
targetX = lengthdir_x(characterSpeed, direction)
targetY = lengthdir_y(characterSpeed, direction)

var seconds_passed = delta_time / 1000000;
var move_speed_this_frame = characterSpeed * seconds_passed;

// Only move towards target if the distance is above ideal
if (distance_to_object(obj_parent_player) > idealDistance) {
	image_speed = 1
	scr_move(move_speed_this_frame, direction);
}

// If enemy holds a long range weapon, it will go to shooting mode
if (weapon > 0) {
	scr_reload()
	scr_weapon_cooldown()
	if (canshoot && weapon.clipCapacity > 0) {
		if (distance_to_object(obj_parent_player) < weapon.shotDistance) {
		state = STATE.attacking
		}
	}
}

// In case enemy holds only close range weapon, it will go to melee mode
if (meleeWeapon > 0) {
	scr_melee_cooldown()
	if (canMelee) {
		if (distance_to_object(obj_parent_player) < meleeWeapon.meleeDistance) {
			state = STATE.melee
		}
	}
}

// In any case we do lose interest a bit and stagger

scr_lose_interest()
scr_lose_stagger()