sprite_index = sprite_idle
//speed = 0; image_speed = 0

// SPAWN detection lines and update the state and points of interest based on that
scr_detectionLines()

direction = scr_setTarget(direction, pointOfInterestX, pointOfInterestY);
image_angle = direction;

// Movement - check for collisions
targetX = lengthdir_x(characterSpeed, direction)
targetY = lengthdir_y(characterSpeed, direction)

var seconds_passed = delta_time / 1000000;
var move_speed_this_frame = characterSpeed * seconds_passed;

scr_move(move_speed_this_frame, direction);
image_speed = 1


// Losing interest 
scr_lose_interest()