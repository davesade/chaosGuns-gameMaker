/// @description Weapon and character upgrades!

// In theory, upgrade can upgrade any weapon, meleeWeapon or character stats
// Medkits can increase health instantly up to maximum value
var attribute = whatToUpgrade
var value = howMuchToUpgrade
var multiplication = multiplier
var player = other
if (weapon) {player = player.weapon}
if (meleeWeapon) {player = player.meleeWeapon}

with (player) {
	var currentValue = variable_instance_get(self,attribute)
	if (multiplication) {
		currentValue *= value
	} else {
		currentValue += value
	}
	var newValue = currentValue
	variable_instance_set(self, attribute, newValue);
}

instance_destroy()