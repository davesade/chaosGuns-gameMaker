/// @description Set enemy state scripts

states_array[STATE.free] = scr_enemy_idle
states_array[STATE.interested] = scr_enemy_interested
states_array[STATE.alerted] = scr_enemy_alerted
states_array[STATE.attacking] = scr_enemy_attacking
states_array[STATE.melee] = scr_melee
states_array[STATE.stagger] = scr_stagger
states_array[STATE.dead] = scr_state_dead

direction = image_angle