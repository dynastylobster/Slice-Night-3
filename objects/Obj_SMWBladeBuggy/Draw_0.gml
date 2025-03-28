/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,Obj_EnemyHurtEffect) and !instance_exists(Obj_SliceDown) {
gpu_set_blendmode(bm_add)
draw_self();
}
draw_self();

gpu_set_blendmode(bm_normal)
