// State refresh

switch(state) {
	case ENEMYSTATE.idle:
		scr_enemy_idle()
	break
	// TODO: Walking / idling along some PATH from game maker
	case ENEMYSTATE.walking:
		sprite_index = sprite_idle
		image_speed = 1
	break
	case ENEMYSTATE.alerted:
		scr_enemy_alerted()
	break
	case ENEMYSTATE.attacking:
		scr_enemy_shooting()
	break
	case ENEMYSTATE.melee:
		scr_enemy_melee()
	break
	case ENEMYSTATE.dead:
		scr_enemy_dead()
	break
}

// Weapon cooldown
if (!canshoot) {
	currentCooldown += 1
	if (currentCooldown >= weapon.cooldown) {
		canshoot = true
		currentCooldown = 0
	}
}

// In case the health is below zero, enemy is removed from the game
// Improve with something more creative
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health < 0) {
	state = ENEMYSTATE.dead
}