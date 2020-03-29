// Get interested in the player once again
attentionTime = 0

// Reduce the ammo

sprite_index = sprite_attack
image_speed = 1
speed = 0
canshoot = false;
reloading = 0

if (scr_animation_end()) {
	weapon.clipCapacity -= 1
	scr_shootBullet(self, obj_parent_player.x, obj_parent_player.y)
	state = STATE.alerted
}

