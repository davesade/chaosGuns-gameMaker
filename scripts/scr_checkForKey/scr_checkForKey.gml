var inventory = argument0
var key = argument1

if (ds_list_find_index(inventory, key) > -1) {
	return true
} else {
	return false
}
