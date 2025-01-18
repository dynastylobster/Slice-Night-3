/// @description Insert description here
// You can write your code in this editor
if instance_exists(BossParentObject) and !global.paused {
	if BossParentObject.phase = 2 {
	x = lerp(x,dest_x,0.0125)
	if !place_meeting(x,y,Obj_BossNoWallJumpArm) {
	y+=yspeed
	yspeed += grav 
	}
	
	if place_meeting(x,y,[Obj_Wall, autoTileCol]) {
		if !place_meeting(x,y,Obj_NoWallJumpBlock) and !place_meeting(x,y,Obj_DebrisPlatform) {
		yspeed = -4
		}
		}
	}
}

if instance_exists(BossParentObject) {

if BossParentObject.hp = 5 or BossParentObject.hp = 3 or BossParentObject.hp = 1 {
if !place_meeting(x,y,Obj_BossNoWallJumpArm) {
instance_create_layer(x,y,layer,Obj_BossNoWallJumpArm)	
}
}
if BossParentObject.hp = 6 or BossParentObject.hp = 4 or BossParentObject.hp = 2 {
	if instance_exists(Obj_BossNoWallJumpArm) {	with(Obj_BossNoWallJumpArm) 
	{
	instance_destroy();	
	}
	}
}

} else y = 64;