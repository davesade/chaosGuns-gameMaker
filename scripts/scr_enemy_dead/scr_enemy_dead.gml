// Drop items from the inventory, if there is any
if (ds_list_size(inventory) > 0) {
	var item = inventory[| 0]
	instance_create_layer(x, y, "Items", item)
}
instance_destroy();