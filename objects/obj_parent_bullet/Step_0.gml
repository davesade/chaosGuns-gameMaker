if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(-1);
if(__dnd_health <= 0)
{
	instance_destroy();
}

if(scr_simpleCollision(x,y,collision_map_id) == 1)
{
	randomize();

	var spark_amount = floor(random_range(3, 6 + 1));

	repeat(spark_amount)
	{
		instance_create_layer(x + 0, y + 0, "Instances", obj_sparkle);
	}
	
	if (instance_place(x, y, obj_parent_door)){
		// Door strenght
		bulletArmor -= 1
	} else {
		// Wall strenght
		bulletArmor -= 3
	}
	
	if (bulletArmor < 0) {
		instance_destroy()
	}
}
