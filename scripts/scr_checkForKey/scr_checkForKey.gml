var inventory = argument0
var key = argument1
scr_trace(inventory, key)
scr_trace(ds_list_find_value(inventory, 0))
if (ds_list_find_index(inventory, key) > -1) {
	return true
} else {
	return false
}
