/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

ini_open("save.ini")
	ini_write_real(global.save, "drillguy", 1)
ini_close();

with(instance_create_depth(x,y,depth,Obj_Model1ShooterEnder)) {
	dest_room = L_Tabuli_3;
}