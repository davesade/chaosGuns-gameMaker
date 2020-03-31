var targetX = argument0
var targetY = argument1
var collision_map_id = argument2

var bbox_side // Local variable for bounding box
// As the sprite might be wider than tile we are checking, I'm expanding bbox by 5 px in all directions

//Horizontal bounding box selected
if (targetX > 0) bbox_side = bbox_right; else bbox_side = bbox_left

if (tilemap_get_at_pixel(collision_map_id, bbox_side + targetX, bbox_top + 5) != 0) || tilemap_get_at_pixel(collision_map_id, bbox_side + targetX, bbox_bottom - 5 != 0)
{
	return true
}

//Vertical bounding box selected
if (targetY > 0) bbox_side = bbox_bottom; else bbox_side = bbox_top

if (tilemap_get_at_pixel(collision_map_id, bbox_left + 5, bbox_side + targetY) != 0) || tilemap_get_at_pixel(collision_map_id, bbox_right - 5, bbox_side + targetY  != 0)
{
	return true
}

// Check if in that direction isn't another MOB

//if (instance_place(targetX, targetY, obj_parent_mob)){
//	return true
//}

//if (distance_to_object(obj_parent_mob) < 3) {
//	// This kinda works, but then one cannot retreat, so it sucks
//	return true
//} 