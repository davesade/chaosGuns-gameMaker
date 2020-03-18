x = argument0
y = argument1
hearDistance = argument2

var _list = ds_list_create();
enemies_in_hearing_range = collision_circle_list(x,y,hearDistance, obj_zombie, false, false, _list, false)
if enemies_in_hearing_range > 0
{
for (var i = 0; i < enemies_in_hearing_range; ++i;)
	{
	_list[| i].state = ENEMYSTATE.alerted
	}
}
ds_list_destroy(_list);