/// @description Move player's shooting offset
// You can write your code in this editor

// Replace this with "gun's holder" or implement offset per weapon?
with (obj_drokk) {
scr_knockback(1, image_angle)
if (bulletSpawnOffsetY == 2) { bulletSpawnOffsetY = -2 } else { bulletSpawnOffsetY = 2 }
}