/// @description Insert description here
// You can write your code in this editor
var playersAngle = -obj_parent_player.direction
var behindX = obj_parent_player.x - idealWidth / 2 + lengthdir_x(50,playersAngle)
var behindY = obj_parent_player.y - idealHeight / 2 - lengthdir_y(50,playersAngle)
draw_sprite(spr_mapInit,0,behindX, behindY)