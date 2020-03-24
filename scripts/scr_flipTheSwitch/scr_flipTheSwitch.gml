//targetDoors array
var listDoors = targetDoors
var selectedDoors = array_length_1d(targetDoors)
var allDoors = instance_number(obj_parent_door)
var targetState = targetDoorState

for (var i = 0; i < allDoors; i++;) {
	var doorToCheck = instance_find(obj_parent_door, i)
	with (doorToCheck) {
		//scr_trace("Door name: ", name)
		for (var j = 0; j < selectedDoors; j++) {
			if (name == listDoors[j]) {
				if (!targetState == 0) {
				state = targetState
				} else {
					if (state == DOORSTATE.closed || state == DOORSTATE.closing) {
						state = DOORSTATE.opening
					} else {
						state = DOORSTATE.closing
					}
				}
			}
		}
	}
}