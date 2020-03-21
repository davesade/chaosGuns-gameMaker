sprite_index = sprite_idle
image_speed = 1

// Melee attack activated automatically during walking, if enemy is close enough
if (distance_to_object(obj_parent_enemy) < meleeDistance) {
	reloading = 0
	state = PLAYERSTATE.melee
}

