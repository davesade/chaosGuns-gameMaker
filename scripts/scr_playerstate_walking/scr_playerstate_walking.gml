sprite_index = spr_drokk_walk
image_speed = 1


if (distance_to_object(obj_parent_enemy) < 30) {
	reloading = 0
	state = PLAYERSTATE.melee
}

