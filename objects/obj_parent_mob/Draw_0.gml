/// @description Healthbars
// You can write your code in this editor
draw_self();

draw_healthbar(x + -10, y + 10, x + 10, y + 11, hp, $00000000, $FF0000FF & $FFFFFF, $FF00FF00 & $FFFFFF, 0, (($00000000>>24) != 0), (($00000000>>24) != 0));

draw_healthbar(x + -10, y + 15, x + 10, y + 16, reloading, $00000000, $FF0000FF & $FFFFFF, $FF00FF00 & $FFFFFF, 0, (($00000000>>24) != 0), (($00000000>>24) != 0));

draw_healthbar(x + -10, y + 20, x + 10, y + 21, stagger, $00000000, $FF0000FF & $FFFFFF, $FF00FF00 & $FFFFFF, 0, (($00000000>>24) != 0), (($00000000>>24) != 0));

if (global.debug){
	
	if (weapon) {
		draw_set_colour(c_white);
		draw_circle(x,y,weapon.hearingDistance, true)
		draw_set_colour(c_red);
		draw_circle(x,y,weapon.shotDistance, true)
	}
	if (meleeWeapon) {
		draw_set_colour(c_white);
		draw_circle(x,y,meleeWeapon.hearingDistance, true)
		draw_set_colour(c_red);
		draw_circle(x,y,meleeWeapon.meleeDistance, true)
		
	}
	draw_set_colour(c_orange);
	if (detectionDistance) draw_circle(x,y,detectionDistance, true)	
}