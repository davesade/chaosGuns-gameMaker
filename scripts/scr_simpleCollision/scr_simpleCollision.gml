x = argument0
y = argument1
collision_map_id = argument2

if (tilemap_get_at_pixel(collision_map_id, x, y) != 0){
	return true
}

if (instance_place(x, y, obj_parent_door)){
	return true
}