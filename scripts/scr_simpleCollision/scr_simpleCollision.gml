/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1865E2ED
/// @DnDArgument : "code" "x = argument0$(13_10)y = argument1$(13_10)collision_map_id = argument2$(13_10)$(13_10)if (tilemap_get_at_pixel(collision_map_id, x, y) != 0){$(13_10)	return true$(13_10)}"
x = argument0
y = argument1
collision_map_id = argument2

if (tilemap_get_at_pixel(collision_map_id, x, y) != 0){
	return true
}