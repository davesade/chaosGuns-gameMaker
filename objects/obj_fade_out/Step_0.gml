opacity += 0.01
draw_set_alpha(1)

if opacity == 1 {
	var mainMenu = asset_get_index("mainmenu")
	room_goto(mainMenu)
}