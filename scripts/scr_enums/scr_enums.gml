enum STATE {
	free, // Free to any interactivable action.
	walking, // Following path (good for cutscenes too).
	interested,
	alerted,
	attacking,
	melee,
	stagger,
	dead	
}

enum DOORSTATE {
	closed,
	open,
	opening,
	closing
}

enum SWITCHSTATE {
	on,
	off,
	cooldown
}

// ENUM for teams and friends?

enum TEAM {
	//army = ["zombie"],
	//zombie = ["army"],
	players
}