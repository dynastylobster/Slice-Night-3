global.firelevel = 0;
global.VoidFont = font_add_sprite_ext(Spr_VoidFont,"abcdefghijklmnopqrstuvwxyz.,ABCDEFGHIJKLMNOPQRSTUVWXYZ",true,0)
global.ConeFont = font_add_sprite_ext(Spr_ConeZoneHpFont,"0123456789",true,1)
global.paused = false;
global.music = Sng_TitleMusic
global.SFXvolume = 0.25;
global.confetti_id = 0
global.walljump = true
global.paused = false
global.on = true
global.dash = false
global.billyfox = false
global.flameslice = false;

ini_open("save.ini")
global.moturoute = ini_read_real("save5","moturoute",false)
global.spoketobanan = ini_read_real("Prefrence","spoketobanan",false)
global.beaten = ini_read_real("save5","beaten",false);
global.musicvolume = ini_read_real("Prefrence","MusicVolume",0.5);
global.SFXvolume = ini_read_real("Prefrence","SFXVolume",0.5);
global.billyfox = ini_read_real("Prefrence","Fox",0);
global.jumpslicemap = ini_read_real("Prefrence","ZXFlip",0);
global.fem = ini_read_real("Prefrence","Fem",0);
global.voidunlocked = ini_read_real("save5","void",false);
global.motuunlocked = ini_read_real("save5","motu",false);
	global.cameraStyle = ini_read_real("Prefrence", "CameraStyle",true );
	ini_close()

/*
ini_write_real("Prefrence","MusicVolume",global.musicvolume);
ini_write_real("Prefrence","SFXVolume",global.SFXvolume);
ini_write_real("Prefrence","Fox",global.billyfox);
ini_write_real("Prefrence","ZXFlip",global.jumpslicemap);
*/

ini_close();


global.save = "file7"

if !instance_exists(GameObject) {
instance_create_layer(0,0,layer_get_id("GameObjectLayer"),GameObject);
instance_create_layer(0, 0, "GameObjectLayer", Obj_AudioSystem_F);
}

room_goto(TitleScreenRoom)