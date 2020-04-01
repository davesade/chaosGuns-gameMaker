// Get interested in the player once again
attentionTime = 0

direction = scr_setTarget(direction, pointOfInterestX, pointOfInterestY);
image_angle = direction;

// Reduce the ammo

sprite_index = sprite_attack
image_speed = 1
speed = 0
canshoot = false;
reloading = 0

if (scr_animation_end()) {
	weapon.clipCapacity -= 1
	scr_shootBullet(self, pointOfInterestX, pointOfInterestY)
	state = STATE.alerted
}

