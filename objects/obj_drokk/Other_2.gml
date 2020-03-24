/// @description Initial start
// You can write your code in this editor

//object_set_persistent(self, 1)
__dnd_health = 100
weapon = instance_create_depth(0, 0, 0, obj_shotgun)
inventory = ds_list_create()
levelList = ds_list_create()
forrestList = ds_list_create()

ds_list_add(forrestList, "les1", "les2", "les3");
randomize()
ds_list_shuffle(forrestList);
var firstForest = ds_list_find_value(forrestList, 0)

ds_list_delete(forrestList, 0);
var secondForest = ds_list_find_value(forrestList, 0)
ds_list_delete(forrestList, 0);

var thirdForest = ds_list_find_value(forrestList, 0)
ds_list_delete(forrestList, 0);
scr_trace(firstForest, secondForest, thirdForest)
// Name of rooms as strings, not nice
ds_list_add(levelList, "vojenska_zakladna", firstForest, "vesnice_a", secondForest, "oppidum");

// , vesnice_b, vojenska_zakladna, oppidum