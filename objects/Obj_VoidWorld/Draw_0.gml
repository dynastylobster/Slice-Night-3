/// @description Insert description here
// You can write your code in this editor

if sprite_index = Spr_VoidWorld {
gpu_set_blendmode(bm_add)
	draw_sprite_ext(Bg_TectonicFuryStars2,age/1.5,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),1,1,0,c_white,  (1.25 - ((distance_to_point(Obj_BgBlackHole.x,Obj_BgBlackHole.y))/40 )  )  )
	draw_sprite_ext(Bg_TectonicFuryStars2,age/1.5,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),1,1,0,c_white,  (0.5 - ((distance_to_point(Obj_BgBlackHole.x,Obj_BgBlackHole.y))/40 )  )  )
gpu_set_blendmode(bm_normal)
}


draw_self();
gpu_set_blendmode(bm_add)

if sprite_index = Spr_VoidWorld then draw_sprite_ext(Spr_VoidWorld,2,x,y,1,1,0,c_white,  (1 - ((distance_to_point(Obj_BgBlackHole.x,Obj_BgBlackHole.y))/40 )  )  )
if sprite_index = Spr_VoidWorld_s then draw_sprite_ext(Spr_VoidWorld,2,Obj_BgBlackHole.x-0.5,Obj_BgBlackHole.y-2,1,1,0,c_white,  (1 - ((distance_to_point(Obj_BgBlackHole.x,Obj_BgBlackHole.y))/40 )  )  )
gpu_set_blendmode(bm_normal)