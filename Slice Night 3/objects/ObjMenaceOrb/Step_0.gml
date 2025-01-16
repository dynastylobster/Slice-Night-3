/// @description Insert description here
// You can write your code in this editor
event_inherited()
if !global.paused {
yspeed += grav
if place_meeting(x,y+1*sign(grav),[Obj_Wall,Obj_EnemyOnlyBlock]) {
yspeed = -jumpspeed *sign(grav)
}

y += yspeed
}