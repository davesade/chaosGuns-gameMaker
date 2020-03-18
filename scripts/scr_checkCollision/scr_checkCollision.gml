/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5D6DCED8
/// @DnDArgument : "code" "var targetX = argument0$(13_10)var targetY = argument1$(13_10)var collision_map_id = argument2$(13_10)$(13_10)var bbox_side$(13_10)$(13_10)//Horizontal$(13_10)if (targetX > 0) bbox_side = bbox_right; else bbox_side = bbox_left$(13_10)$(13_10)if (tilemap_get_at_pixel(collision_map_id, bbox_side + targetX, bbox_top) != 0) || tilemap_get_at_pixel(collision_map_id, bbox_side + targetX, bbox_bottom != 0)$(13_10){$(13_10)	return true$(13_10)}$(13_10)$(13_10)//Vertical$(13_10)$(13_10)if (targetY > 0) bbox_side = bbox_bottom; else bbox_side = bbox_top$(13_10)$(13_10)if (tilemap_get_at_pixel(collision_map_id, bbox_left, bbox_side + targetY) != 0) || tilemap_get_at_pixel(collision_map_id, bbox_right, bbox_side + targetY  != 0)$(13_10){$(13_10)	return true$(13_10)}"
var targetX = argument0
var targetY = argument1
var collision_map_id = argument2

var bbox_side

//Horizontal
if (targetX > 0) bbox_side = bbox_right; else bbox_side = bbox_left

if (tilemap_get_at_pixel(collision_map_id, bbox_side + targetX, bbox_top) != 0) || tilemap_get_at_pixel(collision_map_id, bbox_side + targetX, bbox_bottom != 0)
{
	return true
}

//Vertical

if (targetY > 0) bbox_side = bbox_bottom; else bbox_side = bbox_top

if (tilemap_get_at_pixel(collision_map_id, bbox_left, bbox_side + targetY) != 0) || tilemap_get_at_pixel(collision_map_id, bbox_right, bbox_side + targetY  != 0)
{
	return true
}