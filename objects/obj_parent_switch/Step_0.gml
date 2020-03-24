/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
#region STATE
// State refresh
switch(state) {
	case SWITCHSTATE.off:
		if (offTime > 0) {
			switchTimer += 1
		}
		if (switchTimer > offTime) {
			switchTimer = 0
			currentState = state
			state = SWITCHSTATE.cooldown
			//break
		}
	break
	case SWITCHSTATE.on:
		if (onTime > 0) {
			switchTimer += 1
		}
		if (switchTimer > onTime) {
			switchTimer = 0
			currentState = state
			state = SWITCHSTATE.cooldown
			//break
		}
	break
	case SWITCHSTATE.cooldown:
		switchTimer += 1
		if (switchTimer > cooldown) {
			switchTimer = 0
			previousState = currentState
			if (previousState = SWITCHSTATE.off) {
				state = SWITCHSTATE.on
			} else {
				state = SWITCHSTATE.off
			}
			//break
		}

	break
}
#endregion
