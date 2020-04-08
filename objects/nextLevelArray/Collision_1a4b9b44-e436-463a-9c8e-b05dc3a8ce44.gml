/// @description Move to NEXT level


// Delete finished level from the list
var currentLevelId = ds_list_find_index(global.levelList, room_get_name(room))
ds_list_delete(global.levelList, currentLevelId)

// Grab next level from the list and go
var nextLevel = ds_list_find_value(global.levelList, 0)
var nextLevelId = asset_get_index(nextLevel);
room_goto(nextLevelId)