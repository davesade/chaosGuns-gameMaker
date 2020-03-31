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
	var realDistance = point_distance(x, y, bulletX, bulletY)
	if (realDistance < distance) {
		knockbackDirection = point_direction(x, y, bulletX, bulletY)
		scr_knockback(damage, knockbackDirection)
		hp -= (damage / realDistance) * 10
		stagger += (damage / realDistance) * 10
	}
}

// For grenades in range, if hit, imeddiatelly explode
// Normal bullets might lose some health as well during the way
// And if bullet == rocket, it will do the both = end the flight and explode
with (obj_parent_bullet) {
	var realDistance = point_distance(x, y, bulletX, bulletY)
	if (realDistance < distance) {
		knockbackDirection = point_direction(x, y, bulletX, bulletY)
		scr_knockback(damage, knockbackDirection)
		hp -= damage
		explosionDelay = -1
	}
}