sprite_index = sprite_stagger
speed = 0
scr_lose_stagger()
staggerTimer += 1

if (staggerTimer > staggerTime) {
	staggerTimer = 0
	// We are NOT reseting stagger on wake up - mob will stack up stagger even when staggered!
	state = STATE.alerted
	return
}

// Fall back a little
scr_trace(knockbackDirection, -knockbackDirection)

if (staggerMax mod stagger) {
	targetX = lengthdir_x(1, knockbackDirection)
	targetY = lengthdir_y(1, knockbackDirection)
	if (!scr_checkCollision(targetX, targetY, collision_map_id)) {
		scr_trace("Does collide?", scr_checkCollision(targetX, targetY, collision_map_id))
		targetX = lengthdir_x(1, knockbackDirection)
		targetY = lengthdir_y(1, knockbackDirection)
		x -= targetX
		y -= targetY
	}
}