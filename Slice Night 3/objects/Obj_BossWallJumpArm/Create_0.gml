/// @description Insert description here
// You can write your code in this editor
instance_create_layer(x,y,layer,Obj_BossWallJumpArmSpikes);
starty = y
yspeed = 0
grav = 0.1
startx = x 
dest_x = x
if instance_exists(BossParentObject) {
if BossParentObject.x > x then dest_x = startx+19
if BossParentObject.x < x then dest_x = startx-19
}