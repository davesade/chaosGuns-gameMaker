x = argument0
y = argument1
hearDistance = argument2

var _list = ds_list_create(); // This should contain list of "not in my team" objects, to enable multiple teams
enemies_in_hearing_range = collision_circle_list(x,y,hearDistance, obj_parent_enemy, false, false, _list, false)
if enemies_in_hearing_range > 0
{
for (var i = 0; i < enemies_in_hearing_range; ++i;)
	{
	_list[| i].state = STATE.alerted
	// This would be a good place to activate pointOfInterest x/y values as well!
	}
}
ds_list_destroy(_list);