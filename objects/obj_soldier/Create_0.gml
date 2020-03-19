
__dnd_health = real(100);
canshoot = true
// NOT HAPPY - to set a weapon I have to create an instance - and put it into map :(
weapon = instance_create_depth(0, 0, 0, obj_shotgun)

// But I can update values on create!

//weapon.bulletHealth = 1
//weapon.bulletSpeed = 3
//weapon.clipCapacity = 8 
//weapon.cooldown = 40
//weapon.damage = 5
//weapon.hearingDistance = 10
//weapon.maxClipCapacity = 8
// weapon.pellets = 5
//weapon.reloadTime = 120
weapon.shotDistance = 50
//weapon.spreadAngle = 6