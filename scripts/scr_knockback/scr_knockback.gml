var knockbackDMG = argument0
var knockbackDirection = argument1
// Movement - check for collisions
var seconds_passed = delta_time / 1000000;
var move_speed_this_frame = knockbackDMG * seconds_passed;
scr_trace(knockbackDMG, knockbackDirection)
scr_move(move_speed_this_frame, knockbackDirection);

