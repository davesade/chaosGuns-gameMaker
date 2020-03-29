// We check, if we already hit the enemy during last frame, while our attack animation was not yet fixed
// https://www.youtube.com/watch?v=93Dz2hgsZy0&t=1025s

if (sprite_index != meleeWeapon.melee_sprite_HB) { // DONT FORGET TO FIX THIS ONCE DONE TESTING MELEE
	ds_list_clear(hitList)
	sprite_index = meleeWeapon.melee_sprite_HB  // DONT FORGET TO FIX THIS ONCE DONE TESTING MELEE
	image_speed = 1
}

mask_index = meleeWeapon.melee_sprite_HB //Weapon HitBox only ONLY

var hitNow = ds_list_create()
var hits = instance_place_list(x, y, obj_parent_mob, hitNow, false);
if (hits > 0) {
	for (var i = 0; i < hits; ++i;) {
	    var hitId = hitNow[| i]
		// Turn character towards enemy! This is good! Point and move around the enemy and the character will keep right distance from attack!
		image_angle = point_direction(x, y, hitId.x, hitId.y)
		if (ds_list_find_index(hitList, hitId) == -1 ) {
			var DMG = scr_critical_attack(meleeWeapon)
			var hitDirection = point_direction(x, y, hitId.x, hitId.y)
			ds_list_add(hitList, hitId)
			with (hitId) {
				hp -= DMG
				stagger += DMG
				knockbackDirection = hitDirection - 180
				// Do not change state, if staggered already
				if (state == STATE.stagger) state = STATE.stagger else state = STATE.alerted
			}
		}
	}
}

if (scr_animation_end()) {
	state = STATE.free
	mask_index = sprite_idle
	sprite_index = sprite_idle
}