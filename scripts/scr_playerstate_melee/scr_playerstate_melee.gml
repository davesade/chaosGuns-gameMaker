if (sprite_index != meleeWeapon.melee_sprite_HB) { // DONT FORGET TO FIX THIS ONCE DONE TESTING MELEE
	ds_list_clear(hitList)
	sprite_index = meleeWeapon.melee_sprite_HB
	image_speed = 1
}

mask_index = meleeWeapon.melee_sprite_HB //HB ONLY

var DMG = meleeWeapon.meleeDamage
var hitNow = ds_list_create()
var hits = instance_place_list(x, y, obj_parent_enemy, hitNow, false);
if (hits > 0) {
	for (var i = 0; i < hits; ++i;) {
	    var hitId = hitNow[| i]
		if (ds_list_find_index(hitList, hitId) == -1 ) {
			ds_list_add(hitList, hitId)
			with (hitId) {
				//scr_trace(DMG)
				__dnd_health -= DMG
				// TODO: change state to "staggered" or something - do a test here on variable for staggering!
				state = ENEMYSTATE.alerted
			}
		}
	}
}

if (scr_animation_end()) {
	state = PLAYERSTATE.idle
	mask_index = sprite_idle
	sprite_index = sprite_idle
}