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



#region ATTACK PHASE
// Shooting
var attack;
attack = mouse_check_button(mb_left);
if (attack) {
	if (canshoot) {	
		if (weapon.clipCapacity > 0) {
			weapon.clipCapacity -= 1
			state = PLAYERSTATE.shooting;
			canshoot = false;
			// Reloading is reset!
			reloading = 0
			scr_shootBullet(self, mouse_x, mouse_y)
		} else {
			scr_trace("RELOAD!");
		}
	}
}

// Weapon cooldown
if (!canshoot) {
	currentCooldown += 1
	if (currentCooldown >= weapon.cooldown) {
		canshoot = true
		currentCooldown = 0
	}
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