/// @description Main door logic
#region STATE
// State refresh
switch(state) {
	case DOORSTATE.closed:
		if (closeTime) {	
			doorTimer += 1
			if (doorTimer > closeTime) {
				doorTimer = 0
				state = DOORSTATE.opening
				break
			}
		}
	break
	case DOORSTATE.open:
		if (openTime) {
			doorTimer += 1
			if (doorTimer > openTime) {
				doorTimer = 0
				state = DOORSTATE.closing
				break
			}
		}
	break
	case DOORSTATE.opening:
		x = lerp(x, originalX + openX, openingSpeed)
		y = lerp(y, originalY + openY, openingSpeed)
		//scr_trace(x,y,originalX + openX, originalY + openY, state)
		if (round(x) == originalX + openX && round(y) == originalY + openY) {
			state = DOORSTATE.open
		}
	break
	case DOORSTATE.closing:
		x = lerp(x, originalX, closingSpeed)
		y = lerp(y, originalY, closingSpeed)
		if (round(x) == originalX && round(y) == originalY) {
			state = DOORSTATE.closed
		}
	break
}
#endregion
