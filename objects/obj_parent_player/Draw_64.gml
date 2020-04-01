/// @description Insert description here
// You can write your code in this editor
var offsetX = 100
var offsetY = 20
scr_draw_bar(offsetX,offsetY,hp,maxHp,spr_gui_health)

if (weapon > 0) {
	scr_draw_bar(offsetX, offsetY+30, reloading, weapon.reloadTime, spr_gui_reload)
}