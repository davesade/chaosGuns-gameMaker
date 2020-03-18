/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 099F59F5
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Health
/// @DnDVersion : 1
/// @DnDHash : 47E255DD
/// @DnDArgument : "x1" "-10"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "10"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "10"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "11"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "backcol" "$00000000"
/// @DnDArgument : "barcol" "$00000000"
/// @DnDArgument : "mincol" "$FF0000FF"
/// @DnDArgument : "maxcol" "$FF00FF00"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
draw_healthbar(x + -10, y + 10, x + 10, y + 11, __dnd_health, $00000000, $FF0000FF & $FFFFFF, $FF00FF00 & $FFFFFF, 0, (($00000000>>24) != 0), (($00000000>>24) != 0));