/// @description Insert description here
// You can write your code in this editor
if !global.paused {
		x-= 1.5
	}
if x <0 {
instance_create_depth(x,y,depth-10,Obj_DeathCone)
x = room_width
}