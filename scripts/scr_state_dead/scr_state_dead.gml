// Create blood puddle TODO: Replace with dying animation sprite

var deadSprite = sprite_dead
var deadBody = instance_create_layer(x, y, "blood", obj_parent_decoration);
with (deadBody) {
	sprite_index = deadSprite
	image_angle = random_range(0, 359)	
}

// Drop items from the inventory (currently only latest item is dropped)
if (ds_list_size(inventory) > 0) {
	var item = inventory[| 0]
	instance_create_layer(x, y, "Items", item)
}

// And disappear...
instance_destroy()
scr_trace(id)