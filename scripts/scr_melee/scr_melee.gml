// We check, if we already hit the enemy during last frame, while our attack animation was not yet fixed
// https://www.youtube.com/watch?v=93Dz2hgsZy0&t=1025s

if (sprite_index != meleeWeapon.melee_sprite_HB) { // DONT FORGET TO FIX THIS ONCE DONE TESTING MELEE
	ds_list_clear(hitList)
	sprite_index = meleeWeapon.melee_sprite_HB  // DONT FORGET TO FIX THIS ONCE DONE TESTING MELEE
	image_speed = 1
}

// SPAWN detection lines / update points of interest
//scr_detectionLines()

mask_index = meleeWeapon.melee_sprite_HB //Weapon HitBox only ONLY
var sourceX = x
var sourceY = y
var hitNow = ds_list_create()
var hits = instance_place_list(x, y, obj_parent_mob, hitNow, false);
if (hits > 0) {
	for (var i = 0; i < hits; ++i;) {
	    var hitId = hitNow[| i]
		// Turn character towards enemy! This is good! Point and move around the enemy and the character will keep right distance from attack!
		//direction = point_direction(x, y, hitId.x, hitId.y)
		// ^^ This breaks dynamic camera, will turn it off for now
		image_angle = direction
		if (ds_list_find_index(hitList, hitId) == -1 ) {
			var weaponOfChoice = meleeWeapon
			var staggerDMG = meleeWeapon.staggerDMG
			var knockbackDMG = meleeWeapon.knockback
			var hitDirection = point_direction(x, y, hitId.x, hitId.y)
			ds_list_add(hitList, hitId)
			with (hitId) {
				var DMG = scr_critical_attack(weaponOfChoice)
				hp -= DMG
				stagger += staggerDMG
				knockbackDirection = hitDirection
				scr_knockback(knockbackDMG, knockbackDirection)
				pointOfInterestX = sourceX
				pointOfInterestY = sourceY
				// Do not change state, if staggered already
				if (state == STATE.stagger) state = STATE.stagger else state = STATE.alerted
			}
		}
	}
}

if (scr_animation_end()) {
	state = STATE.alerted
	mask_index = sprite_idle
	sprite_index = sprite_idle
}