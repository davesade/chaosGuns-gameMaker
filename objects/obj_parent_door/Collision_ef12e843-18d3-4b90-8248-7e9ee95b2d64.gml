if (state = DOORSTATE.closed) {
	if (scr_checkForKey(other.inventory, unlockKey)) {
		state = DOORSTATE.opening
		var item = unlockKey
		if (eatsKey) {
			with (other) {
				eatId = ds_list_find_index(inventory, item);
				ds_list_delete(inventory, eatId)
			}
		}
	}
}