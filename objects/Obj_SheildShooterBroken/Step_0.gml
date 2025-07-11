/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if instance_place(x,y,Obj_BrokenSheild) {
	if instance_place(x,y,Obj_BrokenSheild).image_index = 0 then sprite_index = Spr_SheildShooterbrokenBlue
	if instance_place(x,y,Obj_BrokenSheild).image_index = 1 then sprite_index = Spr_SheildShooterbrokenBlack
	if instance_place(x,y,Obj_BrokenSheild).image_index = 2 then sprite_index = Spr_SheildShooterbrokenGreen
}