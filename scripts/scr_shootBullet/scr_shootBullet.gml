var attacker = argument0
var targetX = argument1
var targetY = argument2
var weapon = attacker.weapon
var targetSpeed = weapon.bulletSpeed

// Check if some enemy can hear the shot
// Update this check in case it's the enemy shooting at the player
scr_enemyHearing(attacker.x, attacker.y, weapon.hearingDistance)

// Generate actual shot
repeat (weapon.pellets) {
	if (weapon.spreadAngle) {
		targetX += random_range(-weapon.spreadAngle, weapon.spreadAngle)
		targetY += random_range(-weapon.spreadAngle, weapon.spreadAngle)
		targetSpeed += random_range(-(weapon.spreadAngle / 10), (weapon.spreadAngle / 10))
	}
	// Correct bullet spawning from tip of the gun
	// https://www.youtube.com/watch?v=AAyD7wMV1bI&t=716s
	var gunDirection = point_direction(0, 0, attacker.bulletSpawnOffsetX, attacker.bulletSpawnOffsetY)
	var gunLenght = point_distance(0, 0, attacker.bulletSpawnOffsetX, attacker.bulletSpawnOffsetY)
	var lookingAt = point_direction(attacker.x, attacker.y, targetX, targetY)
	bulletSpawnX = attacker.x + lengthdir_x(gunLenght, lookingAt + gunDirection)
	bulletSpawnY = attacker.y + lengthdir_y(gunLenght, lookingAt + gunDirection)
	
	var pellet = instance_create_layer(bulletSpawnX, bulletSpawnY, "Bullets", obj_parent_bullet)
	with (pellet) {
		targetXX = targetX
		targetYY = targetY
		damage = weapon.damage
		bulletSpeed = targetSpeed
		bulletArmor = weapon.bulletArmor
		shotDistance = weapon.shotDistance
		owner = attacker.id // Set owner of the bullet - whoever shot it
		bullet_sprite = weapon.bullet_sprite
		explosionSize = weapon.explosionSize
		explosionDamage = weapon.explosionDamage
		explosionBits = weapon.explosionBits
		event_user(0);
	}
}