/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 211BA2B5
/// @DnDArgument : "expr" "room"
var l211BA2B5_0 = room;
switch(l211BA2B5_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 50AE99EA
	/// @DnDParent : 211BA2B5
	/// @DnDArgument : "const" "Room_win"
	case Room_win:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 0F4472E3
		/// @DnDParent : 50AE99EA
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 0D20B5A0
		/// @DnDParent : 50AE99EA
		/// @DnDArgument : "color" "$FF00FF00"
		draw_set_colour($FF00FF00 & $ffffff);
		var l0D20B5A0_0=($FF00FF00 >> 24);
		draw_set_alpha(l0D20B5A0_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 045DC2AA
		/// @DnDParent : 50AE99EA
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "150"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""YOU WIN""
		draw_text_transformed(250, 150, string("YOU WIN") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 7B6C9158
		/// @DnDParent : 50AE99EA
		draw_set_colour($FFFFFFFF & $ffffff);
		var l7B6C9158_0=($FFFFFFFF >> 24);
		draw_set_alpha(l7B6C9158_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 161DCB97
		/// @DnDParent : 50AE99EA
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" ""FINAL SCORE: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(250, 250, string("FINAL SCORE: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 43AC434E
		/// @DnDParent : 50AE99EA
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "300"
		/// @DnDArgument : "caption" "">> PRESS ENTER TO RESTART <<""
		draw_text(250, 300, string(">> PRESS ENTER TO RESTART <<") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 37FB4196
		/// @DnDParent : 50AE99EA
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 1F4B5FDC
	/// @DnDParent : 211BA2B5
	/// @DnDArgument : "const" "Room_game"
	case Room_game:
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 5CCC9CBB
		/// @DnDParent : 1F4B5FDC
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "20"
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(20, 20, string("Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 460A602E
		/// @DnDParent : 1F4B5FDC
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "40"
		/// @DnDArgument : "sprite" "spr_lives"
		/// @DnDSaveInfo : "sprite" "spr_lives"
		var l460A602E_0 = sprite_get_width(spr_lives);
		var l460A602E_1 = 0;
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		for(var l460A602E_2 = __dnd_lives; l460A602E_2 > 0; --l460A602E_2) {
			draw_sprite(spr_lives, 0, 20 + l460A602E_1, 40);
			l460A602E_1 += l460A602E_0;
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2530B72F
	/// @DnDParent : 211BA2B5
	/// @DnDArgument : "const" "Room_start"
	case Room_start:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 2CBC242D
		/// @DnDParent : 2530B72F
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 22012CAE
		/// @DnDParent : 2530B72F
		/// @DnDArgument : "color" "$FF00FFFF"
		draw_set_colour($FF00FFFF & $ffffff);
		var l22012CAE_0=($FF00FFFF >> 24);
		draw_set_alpha(l22012CAE_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 6058B4CF
		/// @DnDParent : 2530B72F
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""SPACE ROCKS""
		draw_text_transformed(250, 100, string("SPACE ROCKS") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 16E6AF07
		/// @DnDParent : 2530B72F
		draw_set_colour($FFFFFFFF & $ffffff);
		var l16E6AF07_0=($FFFFFFFF >> 24);
		draw_set_alpha(l16E6AF07_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 4C72532B
		/// @DnDParent : 2530B72F
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "200"
		/// @DnDArgument : "caption" ""Score 1,000 points to win!""
		draw_text(250, 200, string("Score 1,000 points to win!") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 36CB8BD4
		/// @DnDParent : 2530B72F
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "230"
		/// @DnDArgument : "caption" ""Move with UP/LEFT/RIGHT keys""
		draw_text(250, 230, string("Move with UP/LEFT/RIGHT keys") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 3573A985
		/// @DnDParent : 2530B72F
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "260"
		/// @DnDArgument : "caption" ""Press SPACE to shoot""
		draw_text(250, 260, string("Press SPACE to shoot") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 11F0CB66
		/// @DnDParent : 2530B72F
		/// @DnDArgument : "color" "$FF00FFFF"
		draw_set_colour($FF00FFFF & $ffffff);
		var l11F0CB66_0=($FF00FFFF >> 24);
		draw_set_alpha(l11F0CB66_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 05C12C7E
		/// @DnDParent : 2530B72F
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "350"
		/// @DnDArgument : "caption" "">> PRESS ENTER TO START <<""
		draw_text(250, 350, string(">> PRESS ENTER TO START <<") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 0CE7C717
		/// @DnDParent : 2530B72F
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 5A69C0FA
		/// @DnDParent : 2530B72F
		draw_set_colour($FFFFFFFF & $ffffff);
		var l5A69C0FA_0=($FFFFFFFF >> 24);
		draw_set_alpha(l5A69C0FA_0 / $ff);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 4A58BAB9
	/// @DnDParent : 211BA2B5
	/// @DnDArgument : "const" "Room_gameover"
	case Room_gameover:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 40AEC7AD
		/// @DnDParent : 4A58BAB9
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 6314B105
		/// @DnDParent : 4A58BAB9
		/// @DnDArgument : "color" "$FF0000FF"
		draw_set_colour($FF0000FF & $ffffff);
		var l6314B105_0=($FF0000FF >> 24);
		draw_set_alpha(l6314B105_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 46969988
		/// @DnDParent : 4A58BAB9
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "150"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""YOU LOSE""
		draw_text_transformed(250, 150, string("YOU LOSE") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 227EC270
		/// @DnDParent : 4A58BAB9
		draw_set_colour($FFFFFFFF & $ffffff);
		var l227EC270_0=($FFFFFFFF >> 24);
		draw_set_alpha(l227EC270_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 0B75F4C5
		/// @DnDParent : 4A58BAB9
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" ""FINAL SCORE: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(250, 250, string("FINAL SCORE: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 1F6490F3
		/// @DnDParent : 4A58BAB9
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "300"
		/// @DnDArgument : "caption" "">> PRESS ENTER TO RESTART <<""
		draw_text(250, 300, string(">> PRESS ENTER TO RESTART <<") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 277D3EBC
		/// @DnDParent : 4A58BAB9
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;
}