if (state == DOORSTATE.closed || state == DOORSTATE.closing) {
	if (scr_checkForKey(other.inventory, unlockKey)) {
		state = DOORSTATE.opening
		var item = unlockKey
		if (eatsKey) {
			with (other) {
				eatId = ds_list_find_index(inventory, item);
				ds_list_delete(inventory, eatId)
			}
		}
	} else if (state == DOORSTATE.closing) {
		// Player has no key
		other.hp -= closingSpeed * 10
	}
}