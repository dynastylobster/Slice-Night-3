/// @description Insert description here
// You can write your code in this editor
if !global.paused and onscreen {
var ThisDrill = instance_create_depth(x-8,y,depth+50,Obj_ToxicHeartDrill)
ThisDrill.image_yscale = dir
}
alarm[0] = Delay;