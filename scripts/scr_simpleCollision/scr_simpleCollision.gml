x = argument0
y = argument1
collision_map_id = argument2
noise = argument3
var tileType = tilemap_get_at_pixel(collision_map_id, x, y)

if (tileType == 1){
	// Bullet hit the wall, it will make some noise!
	scr_enemyHearing(x,y,noise)
	return true
}

if (instance_place(x, y, obj_parent_door)){
	// Bullet hit the door, it will make some noise!
	scr_enemyHearing(x,y,noise)
	return true
}