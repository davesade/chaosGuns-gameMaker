/// @description Insert description here
// You can write your code in this editor
switch(state) {
	case SWITCHSTATE.off:
		sprite_index = spr_default_switchOff
		scr_flipTheSwitch()
		currentState = state
		state = SWITCHSTATE.cooldown
	break
	case SWITCHSTATE.on:
		sprite_index = spr_default_switchOn
		scr_flipTheSwitch()
		currentState = state
		state = SWITCHSTATE.cooldown
	break
}