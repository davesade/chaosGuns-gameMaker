/// @description Set camera
global.debug = true
// Scaling based on: https://www.youtube.com/watch?v=wv3R2Q536ZU
ideal_width = 0; //Doesn't matter because we are going to calculate this.
ideal_height = 256;
zoom = 3;
max_zoom = 1;
view_zoom = 5
view_max_zoom = 10
 
//Aspect ratio
aspect_ratio = display_get_width() / display_get_height();
aspect_ratio = clamp(aspect_ratio, 16 / 9, 21 / 9)
 
//Calculate new ideal width and height.
ideal_width = round(ideal_height * aspect_ratio);
ideal_height =round(ideal_width/aspect_ratio);

// Enable perfect pixel scaling
if(display_get_width() mod ideal_width != 0){
	var d = round(display_get_width() / ideal_width)
	ideal_width = display_get_width() / d
}

if(display_get_height() mod ideal_height != 0){
	var d = round(display_get_height() / ideal_height)
	ideal_height = display_get_height() / d
}

ideal_width = round(ideal_width);
ideal_height = round(ideal_height);
 
//Check to make sure our ideal width and height isn't an odd number, as that's usually not good.

if (ideal_width & 1)
  ideal_width++;
     
if (ideal_height & 1)
  ideal_height++;

max_zoom = floor(display_get_width() / ideal_width)

// Resize surface, GUI and game window base on newly calculated values
surface_resize(application_surface,ideal_width,ideal_height);
display_set_gui_size(ideal_width,ideal_height);
window_set_size(ideal_width*zoom,ideal_height*zoom);

// Create camera
globalvar CAMERA;
CAMERA = camera_create();

camera_set_view_size(CAMERA,ideal_width,ideal_height)


// Center window
alarm[0] = 1