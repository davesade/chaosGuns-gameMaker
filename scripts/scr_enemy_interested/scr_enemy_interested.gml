sprite_index = sprite_idle
speed = 0; image_speed = 0

// SPAWN detection lines and update the state and points of interest based on that
scr_detectionLines()

direction = scr_setTarget(direction, pointOfInterestX, pointOfInterestY);
image_angle = direction;

// Try walk in point of interest
var targetX = lengthdir_x(characterSpeed, direction)
var targetY = lengthdir_y(characterSpeed, direction)
if (!scr_checkCollision(targetX,targetY,collision_map_id)) {speed = characterSpeed; image_speed = 1}

// Losing interest 
scr_lose_interest()