// Get interested in the player once again
attentionTime = 0

// Check for cooldown
if (canshoot) {
	// Check for the ammo
	if (weapon.clipCapacity > 0) {
		weapon.clipCapacity -= 1
		sprite_index = sprite_attack
		image_speed = 1
		speed = 0
		canshoot = false;
		reloading = 0
		scr_shootBullet(self, obj_parent_player.x, obj_parent_player.y)
	} else {
		sprite_index = sprite_idle
		speed = 0
	}
}
state = ENEMYSTATE.alerted