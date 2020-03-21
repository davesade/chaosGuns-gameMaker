/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 1500C9D6
/// @DnDArgument : "font" "font_basic"
/// @DnDSaveInfo : "font" "5ef4026d-9d63-466c-9ed1-8cd2635525de"
draw_set_font(font_basic);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4823513D
/// @DnDArgument : "x" "view_current.x"
/// @DnDArgument : "y" "view_current.y"
/// @DnDArgument : "caption" ""bullet sprite: ""
/// @DnDArgument : "var" "obj_drokk.inventory"
draw_text(view_current.x, view_current.y, string("bullet sprite: ") + string(obj_drokk.inventory));