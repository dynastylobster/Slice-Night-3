/// @description Insert description here
// You can write your code in this editor

if pretimer > 0 frame = 2;
if posttimer > 0 frame = 3;
if pretimer = 0 and posttimer = 0 and frame = 3 then frame = image_index
if pretimer = -1 and posttimer = -1 then frame = 0
if place_meeting(x,y,Obj_EnemyHurtEffect) {
gpu_set_blendmode(bm_add)
draw_sprite(sprite_index,frame,draw_x,y)
}
draw_sprite(sprite_index,frame,draw_x,y)

gpu_set_blendmode(bm_normal)
