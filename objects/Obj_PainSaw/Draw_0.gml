/// @description Insert description here
// You can write your code in this editor
if !activated {
		draw_sprite(sprite_index,2,x,y)
		draw_sprite_ext(sprite_index,2,x,y,1,1,45,c_white,1);
	} 
if activated {
		image_index = 1;
        draw_sprite_ext(sprite_index,2,x,y,image_xscale,1,age*-(xspeed*0.25),c_white,1);
        draw_sprite_ext(sprite_index,2,x,y,image_xscale,1,45+age*(-xspeed*0.25),c_white,1);
	}

if place_meeting(x,y,Obj_EnemyHurtEffect) {
gpu_set_blendmode(bm_add)
draw_self();
}
draw_self();

gpu_set_blendmode(bm_normal)