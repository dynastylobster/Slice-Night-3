/// @description Insert description here
// You can write your code in this editor
if room != TitleScreenOptionsRoom {
ini_open("save.ini")
ini_write_string(global.save,"level",room_get_name(room));
ini_close();

if global.save = "file7" {
	ini_open("save.ini");
		ini_write_real("file7",room_get_name(room),true);
	ini_close();
	}
}