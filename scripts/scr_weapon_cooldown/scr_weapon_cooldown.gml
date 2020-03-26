// Weapon cooldown
if (!canshoot) {
	currentCooldown += 1
	if (currentCooldown >= weapon.cooldown) {
		canshoot = true
		currentCooldown = 0
	}
}