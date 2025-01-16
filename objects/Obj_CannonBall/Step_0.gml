/// @description Insert description here
// You can write your code in this editor
if hit = true and instance_exists(Obj_BoomTube) {
direction = point_direction(x,y,instance_nearest(x,y,Obj_BoomTube).x,instance_nearest(x,y,Obj_BoomTube).y)
} 
if global.paused speed = 0 else if speed != 3 then speed = 2