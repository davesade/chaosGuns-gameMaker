ds_list_clear(hitList)
scr_trace("CLOSECOMBAT")
sprite_index = spr_drokk_melee
image_speed = 1
mask_index = spr_drokk_meleeHB
	
var hitNow = ds_list_create()
var hits = instance_place_list(x, y, obj_parent_enemy, hitNow, false);
if (hits > 0) {
	for (var i = 0; i < hits; ++i;) {
	    var hitId = hitNow[| i]
		if (ds_list_find_index(hitList, hitId) == -1 ) {
			ds_list_add(hitList, hitId)
			with (hitId) {
				__dnd_health -= 100
			}
		}
	}
}

mask_index = spr_drokk_walk

if (scr_animation_end()) {
	state = PLAYERSTATE.idle
	sprite_index = spr_drokk_walk
}