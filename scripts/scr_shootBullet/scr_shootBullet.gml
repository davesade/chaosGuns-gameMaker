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
	targetX += random_range(-weapon.spreadAngle, weapon.spreadAngle)
	targetY += random_range(-weapon.spreadAngle, weapon.spreadAngle)
	targetSpeed += random_range(-(weapon.spreadAngle / 10), (weapon.spreadAngle / 10))
	var pellet = instance_create_layer(attacker.x, attacker.y, "Bullets", obj_bullet)
	with (pellet) {
		targetXX = targetX
		targetYY = targetY
		damage = weapon.damage
		bulletSpeed = targetSpeed
		bulletHealth = weapon.bulletHealth
		shotDistance = weapon.shotDistance
		owner = attacker.id // Set owner of the bullet - whoever shot it
		event_user(0);
	}
}