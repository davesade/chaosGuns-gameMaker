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
		hp = distance
		event_user(0);
	}
}

// Check if other enemies could hear explosion sound - 1.5 times of damage distance
scr_enemyHearing(bulletX, bulletY, distance * 1.5)

// This point distance is weird - I tried circle_area, but it didn't do what I expected
with (obj_parent_player) {
	if (point_distance(x, y, bulletX, bulletY) < distance) {
		hp -= damage
	}
}

with (obj_parent_enemy) {
	if (point_distance(x, y, bulletX, bulletY) < distance) {
		hp -= damage
		state = STATE.alerted
	}
}