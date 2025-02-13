/// @description Insert description here
// You can write your code in this editor
if onscreen {
	if instance_number(Obj_EmberEffect) < 100 {
instance_create_depth(x+8,y+8,depth,Obj_EmberEffect);
	}
}
alarm[0] = choose(5,10,20,40)