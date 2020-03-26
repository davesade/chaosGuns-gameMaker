// Check the owner of the bullet - to rule out self harming
// OTHER == the bullet which hits the target
if (!(self.id == other.owner)) {
	// Reduce health, but let's check CRITICAL!
	var diceThrow = random_range(0,99)
	if (diceThrow < other.criticalChance) {
		__dnd_health -= (other.criticalMultiplier * other.damage);
		var bloodSploshes = random_range(3, 10)
		repeat(bloodSploshes) {
			var dropOffsetX = random_range(-10, 10)
			var dropOffsetY = random_range(-10, 10)
			var dropSprite = bloodSplashSprite
			var blood = instance_create_layer(x + dropOffsetX, y + dropOffsetY, "blood", obj_parent_decoration);
			with (blood){
				sprite_index = dropSprite
				image_angle = random_range(0,359)
			}
		}
	} else {
		__dnd_health -= other.damage;
	}

	randomize();
	
	// Chance of creating random blood puddle
	//blood_puddle = (random_range(0, 1));

	//if(blood_puddle <= 0.1)
	//{
	//	instance_create_layer(x, y, "Instances", obj_blood_puddle);
	//}

	var random_blood = (random_range(5, 10));
	var bloodColor = bloodType
	repeat(random_blood)
	{
		var blood = instance_create_layer(x, y, "blood", obj_parent_blood);
		with(blood){sprite_index = bloodColor}
	}

	var targetArmor = armor
	with(other) {
		// Decrease bullet armor to check, if the bullet went trought the body
		bulletArmor -= targetArmor
		if (bulletArmor < 0) {
			if (explosionSize) {
				scr_explosion(self)
			}
			instance_destroy()
		}
		// We lower overall travel distance by target's armor
		__dnd_health -= targetArmor
		// And also decrease damage of outcoming bullet
		damage -= targetArmor / 2
		// Make sure, that there is always some damage, if bullet survives with armor
		if damage < 0 { damage = 1 }
	}
	
	// SHOULD GO TO STAGGERED!
	// On successful hit set the state of enemy to alerted
	state = ENEMYSTATE.alerted;

}