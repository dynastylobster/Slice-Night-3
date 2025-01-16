/// @description Insert description here
// You can write your code in this editor
ini_open("save.ini")

ini_write_real("Prefrence","MusicVolume",global.musicvolume);
ini_write_real("Prefrence","SFXVolume",global.SFXvolume);
ini_write_real("Prefrence","Fox",global.billyfox);
ini_write_real("Prefrence","ZXFlip",global.jumpslicemap);

ini_close();
room_speed = 60;
fastONOFF = false
global.total_keys = 0
global.total_Bkeys = 0
global.total_question = 0