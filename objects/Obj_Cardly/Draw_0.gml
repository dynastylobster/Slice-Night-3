/// @description Insert description here
// You can write your code in this editor

if masking {
			draw_sprite(Spr_CardlyStarmask,age*2,x,y)
		draw_sprite(Spr_CardlyMask,age,x,y)
	}

if !masking {
if place_meeting(x,y,Obj_EnemyHurtEffect) {
gpu_set_blendmode(bm_add)
draw_self();
}
draw_self();

gpu_set_blendmode(bm_normal)

}