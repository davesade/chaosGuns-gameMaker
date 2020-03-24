bullet = argument0

var shrapnels = bullet.explosionBits
var damage = bullet.explosionDamage
var distance = bullet.explosionSize
var bulletX = bullet.x
var bulletY = bullet.y

repeat(shrapnels)
{
	shrapnel = instance_create_layer(x , y , "Instances", obj_explosion);
	with (shrapnel) {
		__dnd_health = distance
		event_user(0);
	}
}


// This point distance is weird - doesn't seem scalable. I tried circle_area, but it didn't do what I expected
with (obj_parent_player) {
	if (point_distance(x, y, bulletX, bulletY) < distance) {
		__dnd_health -= damage
	}
}

with (obj_parent_enemy) {
	if (point_distance(x, y, bulletX, bulletY) < distance) {
		__dnd_health -= damage
		state = ENEMYSTATE.alerted
	}
}