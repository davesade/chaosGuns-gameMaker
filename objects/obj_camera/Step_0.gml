/// @description Insert description here
// You can write your code in this editor

//var target = obj_parent_player
//var camW = 640
//var camH = 240

//var camX = clamp(target.x, camW/2, room_width - camW/2);
//var camY = clamp(target.y, camH/2, room_height - camH/2);
//camera_set_view_pos(view_camera[0], camX - camW/2, camY - camH/2);
//var target = obj_parent_player

////var viewmat = matrix_build_lookat(800, 450, -10, 800, 450, 0, 0, 1, 0);
//var viewmat = matrix_build_lookat(target.x, target.y, -10, target.x, target.y, 0, 0, 1, 0);
//var projmat = matrix_build_projection_ortho(320, 240, 1.0, 32000.0);
//camera_set_view_mat(view_camera[0], viewmat);
//camera_set_proj_mat(view_camera[0], projmat);

//camera_set_view_angle(view_camera[0], 1)
//mainAngle = point_direction(obj_parent_player.x - idealWidth / 2, obj_parent_player.y - idealHeight / 2, mouse_x, mouse_y)
//camera_set_view_angle(CAMERA, mainAngle)

var playersAngle = -obj_parent_player.direction
var behindX = obj_parent_player.x - idealWidth / 2 + lengthdir_x(50,playersAngle)
var behindY = obj_parent_player.y - idealHeight / 2 - lengthdir_y(50,playersAngle)

camera_set_view_pos(CAMERA, behindX, behindY)

//camera_set_view_pos(CAMERA, (obj_parent_player.x - idealWidth / 2), (obj_parent_player.y - idealHeight / 2 - 100))
//camera_set_view_angle(CAMERA, point_direction(obj_parent_player.x, obj_parent_player.y, mouse_x, mouse_y))
// mainAngle = point_direction(obj_parent_player.x, obj_parent_player.y, mouse_x, mouse_y)

//var view_mat = matrix_build_lookat(obj_parent_player.x, obj_parent_player.y, -10, mouse_x, mouse_y, 0, 0, 1, 0);
//camera_set_view_mat(CAMERA, view_mat);

//camera_set_view_angle(CAMERA, -obj_parent_player.direction + 90);