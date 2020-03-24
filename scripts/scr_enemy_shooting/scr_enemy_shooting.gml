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
		scr_shootBullet(self, obj_parent_player.x, obj_parent_player.y)
	} else {
		reloading += 1
		sprite_index = sprite_idle
		speed = 0
		if (reloading >= weapon.reloadTime) {
			weapon.clipCapacity = weapon.maxClipCapacity
			reloading = 0
		}
	}
}
state = ENEMYSTATE.alerted