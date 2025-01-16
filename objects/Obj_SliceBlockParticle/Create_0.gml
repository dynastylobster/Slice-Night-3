/// @description Insert description here
// You can write your code in this editor
grav = 0.2
yspeed = random_range(-0.7,-7)
xspeed = random_range(2,-2)
alarm[0] = 8
age = 0
if place_meeting(x,y,Obj_DiggerBlade) {
var funny = irandom_range(0,15)
if funny = 15 then sprite_index = Spr_Snowflake
if funny = 12 or funny = 13 sprite_index = Spr_SliceBlockRedParticle
if funny = 15 {
image_xscale = 3
image_yscale = 3
}
}
purple = false