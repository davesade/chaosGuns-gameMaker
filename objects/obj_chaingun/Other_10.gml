/// @description Move player's shooting offset
// You can write your code in this editor

// Replace this with "gun's holder" or implement offset per weapon?
with (obj_drokk) {
scr_knockback(weapon.knockback, image_angle - 180)
if (bulletSpawnOffsetY == 2) { bulletSpawnOffsetY = -2 } else { bulletSpawnOffsetY = 2 }
}