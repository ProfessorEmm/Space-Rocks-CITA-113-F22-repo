/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 54BF9D97
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "Room_game"
if(room == Room_game)
{
	/// @DnDAction : YoYo Games.Instance Variables.If_Score
	/// @DnDVersion : 1
	/// @DnDHash : 1D64F02F
	/// @DnDParent : 54BF9D97
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1000"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	if(__dnd_score >= 1000)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 3D1C1268
		/// @DnDParent : 1D64F02F
		/// @DnDArgument : "room" "Room_win"
		/// @DnDSaveInfo : "room" "Room_win"
		room_goto(Room_win);
	}

	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 0BD4ED0C
	/// @DnDParent : 54BF9D97
	/// @DnDArgument : "op" "3"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	if(__dnd_lives <= 0)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 72B0BE86
		/// @DnDParent : 0BD4ED0C
		/// @DnDArgument : "room" "Room_gameover"
		/// @DnDSaveInfo : "room" "Room_gameover"
		room_goto(Room_gameover);
	}
}