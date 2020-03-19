// Check the owner of the bullet - to rule out self harming
// OTHER == the bullet which hits the target
if (!(self.id == other.owner)) {

	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(-other.damage);

	randomize();
	
	// Chance of creating blood puddle
	blood_puddle = (random_range(0, 1));

	if(blood_puddle <= 0.1)
	{
		instance_create_layer(x + 0, y + 0, "Instances", obj_blood_puddle);
	}

	var random_blood = (random_range(5, 10));

	repeat(random_blood)
	{
		instance_create_layer(x + 0, y + 0, "Instances", obj_blood);

		variable = (random_range(0, 1));
	}

	// Replace this with reduction of bulletHealth
	with(other) instance_destroy();
	
	// On successful hit set the state of enemy to alerted
	state = ENEMYSTATE.alerted;

}