/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
instance_create_layer(x,y,origin_layer,Obj_Model1ShooterEnder);
instance_create_depth(x,y,depth,Obj_BossDefeatExplosion);
instance_create_depth(x,y,depth,Obj_model1_defeat);
ini_open("save.ini")
	ini_write_real("Bosses Defeated", "model1fight2", 1)
ini_close();