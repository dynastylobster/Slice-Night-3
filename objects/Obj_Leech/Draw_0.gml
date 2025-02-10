// Inherit the parent event
if place_meeting(x,y,Obj_EnemyHurtEffect) {
gpu_set_blendmode(bm_add)
draw_sprite(sprite_index,image_index,x,drawy)
}
draw_sprite(sprite_index,image_index,x,drawy)

gpu_set_blendmode(bm_normal)


if (object_exists(Obj_Billy)) {
if (distance_to_object(Obj_Billy) <= 50) {
	draw_sprite_pos(Spr_LeechTentacle, 0, x - 3, y, x + 3, y, Obj_Billy.x + 3, Obj_Billy.y, Obj_Billy.x - 3, Obj_Billy.y, 1);
}
}