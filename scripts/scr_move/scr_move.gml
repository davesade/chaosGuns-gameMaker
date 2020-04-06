var spd = argument0;
var dir = argument1;
 
var xtarg = x+lengthdir_x(spd,dir);
var ytarg = y+lengthdir_y(spd,dir);

// First let's check for tile collisions
var xcircle = x+lengthdir_x(10,dir);
var ycircle = y+lengthdir_y(10,dir);
var collisionTile = tilemap_get_at_pixel(collision_map_id, xcircle, ycircle)
//scr_trace(collisionTile, x, xcircle, y, ycircle)

if collisionTile < 1 {
	if !place_meeting(xcircle, ycircle, obj_parent_mob) {
		if place_free(xtarg,ytarg) {
		    x = xtarg;
		    y = ytarg;
		}
		else {
		    var sweep_interval = 10;
    
		    for ( var angle = sweep_interval; angle <= 80; angle += sweep_interval) {
		        for ( var multiplier = -1; multiplier <= 1; multiplier += 2) {      
		            var angle_to_check = dir+angle*multiplier;
		            xtarg = x+lengthdir_x(spd, angle_to_check);
		            ytarg = y+lengthdir_y(spd, angle_to_check);     
		            if place_free(xtarg,ytarg) {
		                x = xtarg;
		                y = ytarg;  
		                exit;       
		            }   
		        }
		    }
		}
	}
}