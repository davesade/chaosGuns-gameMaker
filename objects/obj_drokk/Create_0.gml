// Character stats template
//charSpeed = 1;
//name = "Drokk"



/// @description Initial start
// You can write your code in this editor

//object_set_persistent(self, 1)
__dnd_health = 10000
weapon = instance_create_depth(0, 0, 0, obj_shotgun)
meleeWeapon = instance_create_depth(0, 0, 0, obj_boxer)

inventory = ds_list_create()
levelList = ds_list_create()
forrestList = ds_list_create()

// Dirty way of level list generation - shall be isolated in the script
ds_list_add(forrestList, "les1", "les2");
randomize()
ds_list_shuffle(forrestList);
var firstForest = ds_list_find_value(forrestList, 0)

ds_list_delete(forrestList, 0);
var secondForest = ds_list_find_value(forrestList, 0)
ds_list_delete(forrestList, 0);

//scr_trace(firstForest, secondForest)

ds_list_add(levelList, "vojenska_zakladna", firstForest, "vesnice_a", firstForest, "vojenska_zakladna", secondForest, "oppidum");
