sprite_index = sprite_attack
image_speed = 1

if (scr_animation_end()) {
	scr_shootBullet(self, mouse_x, mouse_y)
	state = STATE.free
}