/// @description Insert description here
// You can write your code in this editor
if room != TitleScreenOptionsRoom {
ini_open("save.ini")
ini_write_real(global.save,"level",room);
ini_close();

if global.save = "file4" {
	ini_open("save.ini");
		ini_write_real("file4",room_get_name(room),true);
	ini_close();
	}
}