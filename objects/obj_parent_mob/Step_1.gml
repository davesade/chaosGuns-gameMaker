/// @description Check if alive or staggered

if (hp < 0) {
	scr_trace("Died:", id)
	state = STATE.dead
	return
}

// Make sure, that mob has no more health than actually possible
if (hp > maxHp) hp = maxHp

if (stagger > staggerMax) {

	state = STATE.stagger
}

