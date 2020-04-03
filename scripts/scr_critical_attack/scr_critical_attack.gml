// @description Critical chance check and damage formula
var weapon = argument0

var diceThrow = random_range(0,99)
if (diceThrow < weapon.criticalChance) {
	var DMG = (weapon.criticalMultiplier * weapon.damage);
	var bloodSploshes = random_range(3, 10)
	repeat(bloodSploshes) {
		var randomRadius = random_range(0,359)
		var randomDistance = random_range(0, 20)
		var dropOffsetX = lengthdir_x(randomDistance,randomRadius)
		var dropOffsetY = lengthdir_y(randomDistance,randomRadius)
		var dropSprite = sprite_blood_splush
		var blood = instance_create_layer(x + dropOffsetX, y + dropOffsetY, "blood", obj_parent_decoration);
		with (blood){
			sprite_index = dropSprite
			image_angle = random_range(0,359)
		}
	// We got final value for a damage
	return DMG
	}
} else {
	// It was not a critical, so normal damage is returned
	return weapon.damage;
}
