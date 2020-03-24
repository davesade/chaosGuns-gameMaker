/// @description Insert description here
// You can write your code in this editor

var nextLevel = ds_list_find_value(other.levelList, 0)

with (other) {
	ds_list_delete(levelList, 0);
	var temp = ds_list_find_value(levelList, 0)
	scr_trace(temp)
}

var nextLevelId = asset_get_index(nextLevel);

room_goto(nextLevelId)