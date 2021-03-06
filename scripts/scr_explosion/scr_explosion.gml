bullet = argument0

var shrapnels = bullet.explosionBits
var damage = bullet.explosionDamage
var distance = bullet.explosionSize
var bulletX = bullet.x
var bulletY = bullet.y

repeat(shrapnels)
{
	shrapnel = instance_create_layer(x , y , "Bullets", obj_explosion);
	randomize();
	var random_dir = floor(random_range(0, 359));
	with (shrapnel) {
		hp = distance
		speed = 2;
		direction = random_dir;
	}
}

// Check if other enemies could hear explosion sound - 1.5 times of damage distance
scr_enemyHearing(bulletX, bulletY, 1.5 * distance) // Set pointOfInterest

// This point distance is weird - I tried circle_area, but it didn't do what I expected
with (obj_parent_mob) {
	var realDistance = point_distance(x, y, bulletX, bulletY)
	if (realDistance < distance) {
		knockbackDirection = point_direction(x, y, bulletX, bulletY) - 180// KNOCKBACK STATE???
		scr_knockback(damage * 10, knockbackDirection)
		hp -= (damage / realDistance) * 3
		stagger += (damage / realDistance) * 3
	}
}

// For grenades in range, if hit, imeddiatelly explode
// Normal bullets might lose some health as well during the way
// And if bullet == rocket, it will do the both = end the flight and explode
with (obj_parent_bullet) {
	var realDistance = point_distance(x, y, bulletX, bulletY)
	if (realDistance < distance) {
		knockbackDirection = point_direction(x, y, bulletX, bulletY) // KNOCBACK STATE???
		scr_knockback(damage, knockbackDirection)
		hp -= damage
		explosionDelay = -1
	}
}