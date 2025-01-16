/// @description Insert description here
// You can write your code in this editor
if instance_exists(biglink) {
	biglink = instance_nearest(x,y,Obj_BossWallJumpArm)
	x = startx+ (biglink.x - startx)
	y = starty+ (biglink.y - starty)

}