// Loses health by simple air time
hp -= speed
var doorArmorLevel = 5
var wallArmorLevel = 10
// Let's check, if we hit the wall or doors
#region Collision check
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
		bulletArmor -= doorArmorLevel
		hp -= doorArmorLevel
		damage -= doorArmorLevel
	} else {
		// Wall strenght - could be variable
		bulletArmor -= wallArmorLevel
		hp -= wallArmorLevel
		damage -= wallArmorLevel
	}
	
	// It's possible that bullet will go trough the target - but the damage should be always above 0
	if (damage < 0) { damage = 1 }
	

}
#endregion

if (hp < 0 || bulletArmor < 0) {
	// Stop movement completely
	speed = 0
	if (explosionSize) {
		// Timer for grenades, ie. stay on the floor for a time and then explode
		explosionDelay -= 1
		if (explosionDelay < 0) {
			scr_explosion(self)
			instance_destroy()
		}
		return
	}
	instance_destroy();
}
