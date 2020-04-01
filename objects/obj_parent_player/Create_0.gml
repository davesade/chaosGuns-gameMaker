/// @description Set player states
// Player phase "alerted" is actually just another idle :)

states_array[STATE.free] = scr_player_idle
states_array[STATE.interested] = scr_player_idle
states_array[STATE.alerted] = scr_player_idle
states_array[STATE.attacking] = scr_player_shooting
states_array[STATE.melee] = scr_melee
states_array[STATE.stagger] = scr_stagger
states_array[STATE.dead] = scr_state_dead
