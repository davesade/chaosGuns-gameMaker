/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 5D58FE92
/// @DnDArgument : "health" "15"

__dnd_health = real(15);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 07DB55C8
/// @DnDArgument : "speed" "1"
speed = 1;

/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 568598BA
randomize();

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 0D29C39E
/// @DnDArgument : "var" "random_dir"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "359"
random_dir = floor(random_range(0, 359 + 1));

/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
/// @DnDVersion : 1
/// @DnDHash : 32209011
/// @DnDArgument : "direction" "random_dir"
direction = random_dir;