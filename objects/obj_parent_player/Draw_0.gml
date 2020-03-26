draw_self();

if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
draw_healthbar(x + -10, y + 10, x + 10, y + 11, __dnd_health, $00000000, $FF0000FF & $FFFFFF, $FF00FF00 & $FFFFFF, 0, (($00000000>>24) != 0), (($00000000>>24) != 0));

if (weapon) draw_circle(x,y,weapon.hearingDistance, 2)