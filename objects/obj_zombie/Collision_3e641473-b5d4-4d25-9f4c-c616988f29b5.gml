/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 087CC768
/// @DnDArgument : "health" "-obj_bullet.damage"
/// @DnDArgument : "health_relative" "1"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(-obj_bullet.damage);

/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 7E6BBE92
randomize();

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 3275EAC7
/// @DnDArgument : "var" "blood_puddle"
blood_puddle = (random_range(0, 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 280D3050
/// @DnDArgument : "var" "blood_puddle"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "0.1"
if(blood_puddle <= 0.1)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4FD93B80
	/// @DnDParent : 280D3050
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_blood_puddle"
	/// @DnDSaveInfo : "objectid" "c6aba6bb-cb0e-492e-bd2e-28bb55f136ab"
	instance_create_layer(x + 0, y + 0, "Instances", obj_blood_puddle);
}

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 6808B38F
/// @DnDArgument : "var" "random_blood"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "min" "5"
/// @DnDArgument : "max" "10"
var random_blood = (random_range(5, 10));

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 3B0F9549
/// @DnDArgument : "times" "random_blood"
repeat(random_blood)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4CDC2464
	/// @DnDParent : 3B0F9549
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_blood"
	/// @DnDSaveInfo : "objectid" "e417f753-25da-48d3-833c-73ed2cee82e2"
	instance_create_layer(x + 0, y + 0, "Instances", obj_blood);

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 5783E04C
	/// @DnDParent : 3B0F9549
	variable = (random_range(0, 1));
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 2B59B618
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4F06013F
/// @DnDArgument : "expr" "ENEMYSTATE.alerted"
/// @DnDArgument : "var" "state"
state = ENEMYSTATE.alerted;