// Get interested in the player once again
attentionTime = 0
speed = 0

if (sprite_index != sprite_melee) {
	ds_list_clear(hitList)
	sprite_index = sprite_melee
	image_speed = 1
	//speed = 0
}

mask_index = sprite_melee_hitbox

var DMG = weapon.meleeDamage
var hitNow = ds_list_create()
var hits = instance_place_list(x, y, obj_parent_player, hitNow, false);
if (hits > 0) {
	for (var i = 0; i < hits; ++i;) {
	    var hitId = hitNow[| i]
		if (ds_list_find_index(hitList, hitId) == -1 ) {
			ds_list_add(hitList, hitId)
			with (hitId) {
				__dnd_health -= DMG
			}
		}
	}
}

mask_index = sprite_idle

if (scr_animation_end()) {
	state = ENEMYSTATE.alerted
	sprite_index = sprite_idle
}