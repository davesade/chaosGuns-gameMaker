#region CONTROLS
// Basic Controls
input_up = keyboard_check(ord("W"));
input_down = keyboard_check(ord("S"));
input_left = keyboard_check(ord("A"));
input_right = keyboard_check(ord("D"));
#endregion

#region STATE
// State refresh
switch(state) {
	case PLAYERSTATE.idle:
		scr_playerstate_idle()
	break
	case PLAYERSTATE.walking:
		scr_playerstate_walking()
	break
	case PLAYERSTATE.shooting:
		scr_playerstate_shooting()
	break
	case PLAYERSTATE.melee:
		scr_playerstate_melee()
	break
}
#endregion

// Check for health

if(__dnd_health <= 0)
{
	// Create blood puddle
	instance_create_layer(x, y, "Instances", obj_blood_puddle);

	// Destroy Player object
	instance_destroy();
}