sprite_index = sprite_attack
image_speed = 1
scr_weapon_cooldown()
// This animation end will make sense when we got multiframe animation for attacks
//if (scr_animation_end()) {
	var bullet = scr_shootBullet(self, mouse_x, mouse_y)
	with (weapon) {
		lastShot = bullet
		event_user(0)
	}
	state = STATE.free
//}