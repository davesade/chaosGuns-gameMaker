var DMG = argument0
var knockbackDirection = argument1
// Fall back a little
targetX = lengthdir_x(DMG, knockbackDirection)
targetY = lengthdir_y(DMG, knockbackDirection)

	var check = (scr_checkCollision(targetX,targetY,collision_map_id))
	scr_trace("Does collide?", check)
	
if (!scr_checkCollision(targetX, targetY, collision_map_id)) {
	targetX = lengthdir_x(2, knockbackDirection)
	targetY = lengthdir_y(2, knockbackDirection)
	//scr_trace("Does collide?", scr_checkCollision(targetX, targetY, collision_map_id))
	x -= targetX
	y -= targetY
} else {
		targetX = 0
		targetY = 0
	}