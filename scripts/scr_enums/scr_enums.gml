enum PLAYERSTATE {
	idle,
	walking,
	shooting,
	melee,
	cooldown,
	dead
}

enum ENEMYSTATE {
	idle,
	walking,
	alerted,
	attacking,
	melee,
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