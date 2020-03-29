/// @description Damage formula

// What about "team color", or simply friendly fire?

// Check the owner of the bullet - to rule out self harming
// OTHER == the bullet which hits the target
if (!(id == other.owner)) {
	scr_trace(other.owner)
	// Reduce health, but let's check CRITICAL!
	var DMG = scr_critical_attack(other) // other nebo self?
	scr_trace("Before hit:", id, hp, DMG)
	hp -= DMG
	scr_trace("After hit:", id, hp)
	// Building up stagger on target!
	stagger += DMG
	scr_trace("Stagger buildup:", id, stagger)
	var random_blood = (random_range(5, 10));
	var bloodColor = sprite_blood
	repeat(random_blood) {
		var blood = instance_create_layer(x, y, "blood", obj_parent_blood);
		with(blood){sprite_index = bloodColor}
	}
	// Store a direction of the bullet - when staggered, we will push into this direction
	knockbackDirection = other.direction - 180
	var targetArmor = armor
	// OTHER = bullet
	with(other) {
		// Decrease bullet armor to check, if the bullet went trought the body
		bulletArmor -= targetArmor
		// We lower overall travel distance by target's armor
		hp -= targetArmor
		// And also decrease damage of outcoming bullet
		damage -= targetArmor / 2
		// Make sure, that there is always some damage, if bullet survives with armor
		if damage < 0 { damage = 1 }
	}
	
	// On successful hit set the state of enemy to alerted
	state = STATE.alerted;
	// WORK ON: SOURCEX and SOURCEY for search for probable source of shooting!!! >> pointOfInterest

}