/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(Spr_DiggerBlade,0,x-11,y+24,1,1,0,#102043,1)
draw_sprite_ext(Spr_DiggerBlade,0,x-70,y+24,1,1,0,#102043,1)
if place_meeting(x,y,Obj_EnemyHurtEffect) {
gpu_set_blendmode(bm_add)	
draw_sprite(sprite_index,1,int64(truex),y);
	draw_sprite_ext(sprite_index,0,truex,y+ int64((sin(Obj_Train.age)*1.25)/1.15),1,1,0,c_white,1);
}

draw_sprite(sprite_index,1,int64(truex),y);
if instance_exists(Obj_Train) {
	draw_sprite_ext(sprite_index,0,truex,y+ int64((sin(Obj_Train.age)*1.25)/1.15),1,1,0,c_white,1);
}

if wheelframe < 0 {
draw_sprite_ext(Spr_DiggerBlade,0,x-35,y+24,1,1,0,c_white,1)
draw_sprite_ext(Spr_DiggerBlade,0,x-94,y+24,1,1,0,c_white,1)
}
if wheelframe >= 0 {
draw_sprite_ext(Spr_DiggerBlade,1,x-35,y+24,1,1,0,c_white,1)
draw_sprite_ext(Spr_DiggerBlade,1,x-94,y+24,1,1,0,c_white,1)
}


gpu_set_blendmode(bm_normal);

