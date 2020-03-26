/// @description Insert description here
// You can write your code in this editor
__dnd_health -= 1
if (__dnd_health < 0) {
	image_alpha -= 0.01
	if (image_alpha < 0) {
		instance_destroy()
	}
}