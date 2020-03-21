// State refresh

switch(state) {
	case ENEMYSTATE.idle:
		scr_enemy_idle()
	break
	// TODO: Walking / idling along some PATH from game maker
	case ENEMYSTATE.walking:
		sprite_index = spr_zombie_walk
		image_speed = 1
	break
	case ENEMYSTATE.alerted:
		scr_enemy_alerted()
	break
	case ENEMYSTATE.melee:
		scr_enemy_melee()
	break
}

if (__dnd_health <= 0) {
	instance_destroy()
}