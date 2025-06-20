/// @description Insert description here
// You can write your code in this editor
	global.totalstage += 1
	ini_open("save.ini");
	ini_write_real(global.save,"TotalStage",global.totalstage);
	ini_close();
	room_goto(spare_room);