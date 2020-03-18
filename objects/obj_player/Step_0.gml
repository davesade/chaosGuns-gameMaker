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
		sprite_index = spr_drokk_walk
		image_speed = 0
		break
	case PLAYERSTATE.walking:
		sprite_index = spr_drokk_walk
		image_speed = 1
		break
	case PLAYERSTATE.shooting:
		sprite_index = spr_drokk_attack
		image_speed = 1
		var _list = ds_list_create();
		enemies_in_hearing_range = collision_circle_list(x,y,weapon.hearingDistance, obj_zombie, false, false, _list, false)
		if enemies_in_hearing_range > 0
	    {
	    for (var i = 0; i < enemies_in_hearing_range; ++i;)
	        {
	        _list[| i].state = ENEMYSTATE.alerted
	        }
	    }
		ds_list_destroy(_list);
		break
	case PLAYERSTATE.cooldown:
		break
}
#endregion

#region MOVEMENT
// Set Instance Rotation
image_angle = point_direction(x, y, mouse_x, mouse_y);

// Movement - check for collisions
targetX = (input_right - input_left) * characterSpeed
targetY = (input_down - input_up) * characterSpeed

if (targetX != 0 || targetY != 0) {
	if (!scr_checkCollision(targetX,targetY,collision_map_id)) {
		state = PLAYERSTATE.walking
		x += targetX
		y += targetY
	} else {
		targetX = 0
		targetY = 0
	}
}

if (targetX == 0 && targetY == 0) {state = PLAYERSTATE.idle}
#endregion

#region ATTACK PHASE
// Shooting
var attack;
attack = mouse_check_button(mb_left);
if (attack) {
	if (canshoot) {
		state = PLAYERSTATE.shooting;
		canshoot = false;
		if (weapon.clipCapacity > 0) {
			weapon.clipCapacity -= 1
			scr_shootBullet(self, mouse_x, mouse_y)
		} else {
			scr_trace("RELOAD!");
		}
	}
}

// Weapon cooldown
if (!canshoot) {
	current_cooldown += 1
	if (current_cooldown >= weapon.cooldown) {
		canshoot = true
		current_cooldown = 0
	}
}

#endregion


// Check for health
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;

if(__dnd_health <= 0)
{
	// Create blood puddle
	instance_create_layer(x, y, "Instances", obj_blood_puddle);

	// Destroy Player object
	instance_destroy();
}