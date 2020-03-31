/// @description Update actual weapon in hands!
//scr_trace("Who pick ups the weapon: ", other.id)
// "Hide" the object
x = 0
y = 0
pickedUp = true
// Instant reload!
other.reloading = 0
other.weapon = 1
// Get the weapon
other.weapon = instance_copy(true)

//other.weapon.name = name
//other.weapon.cooldown = cooldown
//other.weapon.hearingDistance = hearingDistance
//other.weapon.clipCapacity = clipCapacity
//other.weapon.maxClipCapacity = maxClipCapacity
//other.weapon.reloadTime = reloadTime
//other.weapon.spreadAngle = spreadAngle
//other.weapon.bulletArmor = bulletArmor
//other.weapon.bulletSpeed = bulletSpeed
//other.weapon.pellets = pellets
//other.weapon.shotDistance = shotDistance
//other.weapon.damage = damage
//other.weapon.staggerDMG = staggerDMG
//other.weapon.criticalChance = criticalChance
//other.weapon.criticalMultiplier = criticalMultiplier
//other.weapon.clip_sprite = clip_sprite
//other.weapon.singleAmmoClip = singleAmmoClip
//other.weapon.bullet_sprite = bullet_sprite
//other.weapon.explosionSize = explosionSize
//other.weapon.explosionDamage = explosionDamage
//other.weapon.explosionBits = explosionDamage
//other.weapon.explosionDelay = explosionDelay

