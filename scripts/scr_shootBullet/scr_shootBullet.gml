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
		targetSpeed += random_range(-(weapon.spreadAngle / 20), (weapon.spreadAngle / 20))
	}
	// Correct bullet spawning from tip of the gun
	// https://www.youtube.com/watch?v=AAyD7wMV1bI&t=716s
	var gunDirection = point_direction(0, 0, attacker.bulletSpawnOffsetX, attacker.bulletSpawnOffsetY)
	var gunLenght = point_distance(0, 0, attacker.bulletSpawnOffsetX, attacker.bulletSpawnOffsetY)
	var lookingAt = point_direction(attacker.x, attacker.y, targetX, targetY)
	bulletSpawnX = attacker.x + lengthdir_x(gunLenght, lookingAt + gunDirection)
	bulletSpawnY = attacker.y + lengthdir_y(gunLenght, lookingAt + gunDirection)
	// Create a bullet based on weapon description
	var pellet = instance_create_layer(bulletSpawnX, bulletSpawnY, "Bullets", obj_parent_bullet)
	with (pellet) {
		targetXX = targetX
		targetYY = targetY
		sourceX = attacker.x
		sourceY = attacker.y
		owner = attacker.id // Set owner of the bullet - whoever shot it
		damage = weapon.damage
		staggerDMG = weapon.staggerDMG
		bulletSpeed = targetSpeed
		bulletArmor = weapon.bulletArmor
		explosionSize = weapon.explosionSize
		explosionDamage = weapon.explosionDamage
		explosionDelay = weapon.explosionDelay
		explosionBits = weapon.explosionBits
		criticalChance = weapon.criticalChance
		criticalMultiplier = weapon.criticalMultiplier
		bulletNoise = weapon.bulletNoise
		hp = weapon.shotDistance
		knockback = weapon.knockback
		sniperShot = weapon.sniperShot
		sprite_index = weapon.bullet_sprite
		direction = point_direction(x, y, targetXX, targetYY);
		image_angle = point_direction(x, y, targetXX, targetYY);
		speed = bulletSpeed
	}
}
return pellet