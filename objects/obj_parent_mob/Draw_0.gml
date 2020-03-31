/// @description Healthbars and debug lines
// You can write your code in this editor
draw_self();

if (global.debug){
	
draw_healthbar(x + -10, y + 10, x + 10, y + 11, hp, $00000000, $FF0000FF & $FFFFFF, $FF00FF00 & $FFFFFF, 0, (($00000000>>24) != 0), (($00000000>>24) != 0));

draw_healthbar(x + -10, y + 15, x + 10, y + 16, reloading, $00000000, $FF0000FF & $FFFFFF, $FF00FF00 & $FFFFFF, 0, (($00000000>>24) != 0), (($00000000>>24) != 0));

draw_healthbar(x + -10, y + 20, x + 10, y + 21, stagger, $00000000, $FF0000FF & $FFFFFF, $FF00FF00 & $FFFFFF, 0, (($00000000>>24) != 0), (($00000000>>24) != 0));

	if (weapon) {
		draw_set_colour(c_white);
		draw_circle(x, y, weapon.hearingDistance, true)
		draw_set_colour(c_red);
		draw_circle(x, y, weapon.shotDistance, true)
	}
	if (meleeWeapon) {
		draw_set_colour(c_white);
		draw_circle(x, y, meleeWeapon.hearingDistance, true)
		draw_set_colour(c_red);
		draw_circle(x, y, 2 *meleeWeapon.meleeDistance, true)
	}
	//draw_set_colour(c_orange);
	//if (detectionDistance) draw_circle(x, y, detectionDistance, true)
	// Draw detection lines
	draw_set_colour(c_lime);
	for (var i = 0; i < array_length_1d(detectionLines); i++){
		var targetX = x + lengthdir_x(detectionDistance, direction + detectionLines[i])
		var targetY = y + lengthdir_y(detectionDistance, direction + detectionLines[i])
		draw_line(x, y, targetX, targetY)
	}
	
}