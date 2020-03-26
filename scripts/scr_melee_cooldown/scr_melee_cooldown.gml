// Weapon cooldown
if (!canMelee) {
	currentCooldown += 1 // Isn't this variable used by shooting weapon as well? Might be genius or crazy good!
	if (currentCooldown >= meleeWeapon.meleeCooldown) {
		canMelee = true
		currentCooldown = 0
	}
}