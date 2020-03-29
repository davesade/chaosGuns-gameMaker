/// @description Check if alive or staggered

if (hp < 0) {
	scr_trace("Died:", id)
	state = STATE.dead
	return
}

// Make sure, that mob has no more health than actually possible
if (hp > maxHp) hp = maxHp

if (stagger > staggerMax) {
	// Fall back a little
	//scr_trace(knockbackDirection, -knockbackDirection)
	targetX = lengthdir_x(1, knockbackDirection)
	targetY = lengthdir_y(1, knockbackDirection)
	if (!scr_checkCollision(targetX, targetY, collision_map_id)) {
		x -= targetX
		y -= targetY
	}
	
	state = STATE.stagger
}

