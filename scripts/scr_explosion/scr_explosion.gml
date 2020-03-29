bullet = argument0

var shrapnels = bullet.explosionBits
var damage = bullet.explosionDamage
var distance = bullet.explosionSize
var bulletX = bullet.x
var bulletY = bullet.y

repeat(shrapnels)
{
	shrapnel = instance_create_layer(x , y , "Bullets", obj_explosion);
	with (shrapnel) {
		hp = distance
		event_user(0);
	}
}

// Check if other enemies could hear explosion sound - 1.5 times of damage distance
scr_enemyHearing(bulletX, bulletY, distance * 1.5) // Set pointOfInterest

// This point distance is weird - I tried circle_area, but it didn't do what I expected
with (obj_parent_mob) {
	if (point_distance(x, y, bulletX, bulletY) < distance) {
		knockbackDirection = point_direction(x, y, bulletX, bulletY)
		hp -= damage
		// Automatically goes to stagger - is it really a good idea?
		state = STATE.stagger
	}
}