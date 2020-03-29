sprite_index = sprite_stagger
speed = 0
scr_lose_stagger()
staggerTimer += 1

if (staggerTimer > staggerTime) {
	staggerTimer = 0
	// We are NOT reseting stagger on wake up - mob will stack up stagger even when staggered!
	state = STATE.alerted
}

