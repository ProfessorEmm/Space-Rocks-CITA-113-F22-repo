/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 510F6CA2
/// @DnDArgument : "expr" "room"
var l510F6CA2_0 = room;
switch(l510F6CA2_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2401CA0B
	/// @DnDParent : 510F6CA2
	/// @DnDArgument : "const" "Room_start"
	case Room_start:
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 0F5B01F4
		/// @DnDParent : 2401CA0B
		/// @DnDArgument : "room" "Room_game"
		/// @DnDSaveInfo : "room" "Room_game"
		room_goto(Room_game);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0F93A6D5
	/// @DnDParent : 510F6CA2
	/// @DnDArgument : "const" "Room_gameover"
	case Room_gameover:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 2365DACA
		/// @DnDParent : 0F93A6D5
		game_restart();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0986ABC5
	/// @DnDParent : 510F6CA2
	/// @DnDArgument : "const" "Room_win"
	case Room_win:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 2BAE9D7E
		/// @DnDParent : 0986ABC5
		game_restart();
		break;
}