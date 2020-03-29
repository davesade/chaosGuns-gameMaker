/// @description Insert description here
// You can write your code in this editor
hp -= 1
if (hp < 0) {
	image_alpha -= 0.01
	if (image_alpha < 0) {
		instance_destroy()
	}
}