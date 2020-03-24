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