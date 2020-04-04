/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white)
draw_set_halign(fa_left)
draw_set_valign(fa_top)

draw_text(5, 5, mouse_x)
draw_text(5, 15, mouse_y)

draw_set_halign(fa_right)
draw_set_valign(fa_bottom)

draw_text(display_get_gui_width() - 5, display_get_gui_height() - 5, "Bottom Right") 