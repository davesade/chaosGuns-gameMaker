sprite_index = sprite_idle
// Replace obj_parent_player to pointOfInterest.x and pointOfInterest.y
image_angle = point_direction(x, y, obj_parent_player.x, obj_parent_player.y)
direction = point_direction(x, y, obj_parent_player.x, obj_parent_player.y)
speed = 0; image_speed = 0
// Try walk in point of interest

var targetX = lengthdir_x(characterSpeed, direction)
var targetY = lengthdir_y(characterSpeed, direction)
if (!scr_checkCollision(targetX,targetY,collision_map_id)) {speed = characterSpeed; image_speed = 1}


// Only move towards target if the distance is above ideal
// Target should be defined as "not in my team" variable
if (distance_to_object(obj_parent_player) < idealDistance) {
	speed = 0
	// Walk to target, check if 5 pixels before the sprite ther is no obstacle
	//targetX = lengthdir_x(5, direction)
	//targetY = lengthdir_y(5, direction)
	//if (!scr_checkCollision(targetX,targetY,collision_map_id)) {speed = characterSpeed; image_speed = 1}
}

// If enemy holds a long range weapon, it will go to shooting mode

if (weapon) {
	scr_reload()
	scr_weapon_cooldown()
	if (canshoot && weapon.clipCapacity > 0) {
		if (distance_to_object(obj_parent_player) < weapon.shotDistance) {
		state = STATE.attacking
		}
	}
}

// In case enemy holds only close range weapon, it will go to melee mode
if (meleeWeapon) {
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