// Check the owner of the bullet - to rule out self harming
// OTHER == the bullet which hits the target
if (!(self.id == other.owner)) {

	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;

	__dnd_health -= other.damage;

	randomize();
	
	// Chance of creating blood puddle
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
		with (blood){
			sprite_index = bloodColor
		}
	}

	var targetArmor = armor
	with(other) {
		// TODO: In theory we could DECREASE damage of the bullet here, to appear more realistic
		bulletArmor -= targetArmor
		if (bulletArmor < 0) {
			instance_destroy()
		}
	}
}