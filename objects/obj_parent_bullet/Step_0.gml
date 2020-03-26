// Loses health by simple air time
__dnd_health -= 1

if (__dnd_health <= 0) {
	if (explosionSize) {
		// Timer for grenades? Ie. stay on the floor for a time and then explode
		explosionDelay -= 1
		if (explosionDelay < 0) {
			scr_explosion(self)
			instance_destroy()
		}
		return
	}
	instance_destroy();
	return // After explosion check, if the bullet is "dead", do nothing below
}

// Let's check, if we hit the wall or doors
if(scr_simpleCollision(x,y,collision_map_id) == 1)
{
	// Make some sparks on the wall
	randomize();
	var spark_amount = floor(random_range(3, 7));
	repeat(spark_amount){
		instance_create_layer(x, y, "Mobs", obj_sparkle);
	}
	
	// Decrease bullet armor, overall shot distance and damage base on hit
	if (instance_place(x, y, obj_parent_door)){
		// Door strenght - could be variable
		bulletArmor -= 1
		__dnd_health -= 1
		damage -= 1
	} else {
		// Wall strenght - could be variable
		bulletArmor -= 3
		__dnd_health -= 3
		damage -= 3
	}
	
	// It's possible that bullet will go trough the target - but the damage should be always above 0
	if (damage < 0) { damage = 1 }
	
	if (bulletArmor < 0) {
		if (explosionSize) {
			// On bullet destruction due collision armor, explode imediatelly
			scr_explosion(self)
		}
		instance_destroy()
	}
}
