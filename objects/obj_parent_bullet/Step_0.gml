__dnd_health -= 1

if (__dnd_health <= 0) {
	if (explosionSize) {
		scr_explosion(self)
	}
	instance_destroy();
	return // After explosion check, if the bullet is "dead", do nothing below
}

if(scr_simpleCollision(x,y,collision_map_id) == 1)
{
	randomize();

	var spark_amount = floor(random_range(3, 7));

	repeat(spark_amount)
	{
		instance_create_layer(x, y, "Instances", obj_sparkle);
	}
	
	// Decrease bullet armor, overall shot distance and damage base on hit
	if (instance_place(x, y, obj_parent_door)){
		// Door strenght
		bulletArmor -= 1
		__dnd_health -= 1
		damage -= 1
	} else {
		// Wall strenght
		bulletArmor -= 3
		__dnd_health -= 3
		damage -= 3
	}
	
	// It's possible that bullet will go trough the target - but the damage should be always above 0
	if (damage < 0) { damage = 1 }
	
	if (bulletArmor < 0) {
		if (explosionSize) {
			scr_explosion(self)
		}
		instance_destroy()
	}
}
