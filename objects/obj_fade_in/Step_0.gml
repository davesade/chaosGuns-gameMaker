opacity -= 0.01
draw_set_alpha(opacity)

if opacity == 0 {
	var mainMenu = asset_get_index("mainmenu")
	room_goto(mainMenu)
}