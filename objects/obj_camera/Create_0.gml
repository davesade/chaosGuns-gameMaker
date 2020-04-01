/// @description Set camera
zoom = 4
idealWidth = display_get_width() / zoom
idealHeight = display_get_height() / zoom
surface_resize(application_surface, idealWidth, idealHeight)
display_set_gui_size(idealWidth, idealHeight)

window_set_size(display_get_width(), display_get_height())
window_set_rectangle(0, 0, display_get_width(), display_get_height())

CAMERA = camera_create();

camera_set_view_size(CAMERA,idealWidth,idealHeight)
//camera_set_view_pos(CAMERA, (x - idealWidth / 2), (y - idealHeight / 2))

//var view_mat = matrix_build_lookat(0, 0, -10, idealWidth, idealHeight, 0, 0, 1, 0);
//var proj_mat = matrix_build_projection_ortho(idealWidth, idealHeight, 1, 10000);
//camera_set_view_mat(CAMERA, view_mat);
//camera_set_proj_mat(CAMERA, proj_mat);

//camera_set_view_pos(view_camera[0], obj_parent_player.x, obj_parent_player.y)
//camera_set_view_angle(view_camera[0], 10)
