sprite_index = sprite_idle
image_speed = 0
if (collision_circle(x, y, detectionDistance, obj_parent_player, false, true)) {
	state=ENEMYSTATE.alerted	
}