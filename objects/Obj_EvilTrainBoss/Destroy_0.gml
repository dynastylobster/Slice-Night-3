/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

ini_open("save.ini")
	ini_write_real("Bosses Defeated", "train", 1)
ini_close();