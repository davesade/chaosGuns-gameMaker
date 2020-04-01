var xx = argument0
var yy = argument1
var currentValue = argument2
var maxValue = argument3
var sprite = argument4

draw_sprite(spr_gui_left_bar, 0, xx, yy)
draw_sprite_stretched(spr_gui_main_bar, 0, xx + 2, yy, maxValue, 20)
draw_sprite(spr_gui_right_bar, 0, xx + 2 + maxValue, yy)
draw_sprite_stretched(sprite, 0, xx + 2, yy + 2, currentValue, 16)