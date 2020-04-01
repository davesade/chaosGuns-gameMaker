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

