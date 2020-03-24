
__dnd_health -= 1

image_alpha -= 0.05

if(__dnd_health <= 0) {
	instance_destroy()
}