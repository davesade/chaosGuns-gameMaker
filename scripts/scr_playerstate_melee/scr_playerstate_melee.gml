if (sprite_index != meleeWeapon.melee_sprite_HB) { // DONT FORGET TO FIX THIS ONCE DONE TESTING MELEE
	ds_list_clear(hitList)
	sprite_index = meleeWeapon.melee_sprite_HB  // DONT FORGET TO FIX THIS ONCE DONE TESTING MELEE
	image_speed = 1
}

mask_index = meleeWeapon.melee_sprite_HB //Weapon HitBox only ONLY

// Let's check CRITICAL!
var diceThrow = random_range(0,99)
if (diceThrow < meleeWeapon.criticalChance) {
	var DMG = meleeWeapon.meleeDamage * meleeWeapon.criticalMultiplier
} else {
	var DMG = meleeWeapon.meleeDamage
}
	


var hitNow = ds_list_create()
var hits = instance_place_list(x, y, obj_parent_enemy, hitNow, false);
if (hits > 0) {
	for (var i = 0; i < hits; ++i;) {
	    var hitId = hitNow[| i]
		// Turn character towards enemy! This is good! Point and move around the enemy and the character will keep right distance from attack!
		image_angle = point_direction(x, y, hitId.x, hitId.y)
		if (ds_list_find_index(hitList, hitId) == -1 ) {
			ds_list_add(hitList, hitId)
			// In case of critical hit, throw some blood around
			if (DMG > meleeWeapon.meleeDamage) {
				var bloodSploshes = random_range(3, 10)
				repeat(bloodSploshes) {
					var dropOffsetX = random_range(-10, 10)
					var dropOffsetY = random_range(-10, 10)
					var dropSprite = hitId.bloodSplashSprite
					var blood = instance_create_layer(hitId.x + dropOffsetX, hitId.y + dropOffsetY, "blood", obj_parent_decoration);
					with (blood){
						sprite_index = dropSprite
						image_angle = random_range(0,359)
					}
				}
			}
			with (hitId) {
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