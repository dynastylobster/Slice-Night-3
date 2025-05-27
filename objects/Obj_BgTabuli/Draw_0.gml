/// @description Insert description here
// You can write your code in this editor
//draw_text(Obj_Billy.x,Obj_Billy.y-84,string(int64(x))+","+string(int64(y)))
draw_sprite_ext(sprite_index,image_index+1,x,y,image_xscale,image_yscale,0,c_white,1)
if x > camera_get_view_x(view_camera[0])+213 -16 and x < camera_get_view_x(view_camera[0])+213 + 16{
	draw_set_alpha(0.5);
	draw_sprite_ext(sprite_index,image_index+1,x,y,image_xscale,image_yscale,0,c_white,1)
	draw_set_alpha(1);
}


if instance_exists(Obj_VoidWorld) {

if Obj_VoidWorld.sprite_index = Spr_VoidWorld {
draw_sprite_ext(Spr_TabuliDark,image_index,x,y,1,1,0,c_white,0.5+Obj_VoidWorld.funny_alpha);
} else {
gpu_set_blendmode(bm_add)
draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,Obj_VoidWorld.funny_alpha);
draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,3+Obj_VoidWorld.funny_alpha);
gpu_set_blendmode(bm_normal)
}

}