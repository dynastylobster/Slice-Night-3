/// @description Insert description here
// You can write your code in this editor
gpu_set_blendmode(bm_add)
if age < 0.6 {
	draw_sprite_ext(Spr_BossDefeatExplosion,0,x,y,1,1,0,#FF00FF,0.45)
}
if age <= 2 {
		draw_sprite_ext(Spr_EnemyDeath,age*2,x,y,1,1,0,#FF00FF,1)
	}
	draw_set_color(c_white)

if instance_exists(parryball) {

draw_sprite(Spr_ParryStarSparkle,age,parryball.x+lengthdir_x(dist,dir),parryball.y+lengthdir_y(dist,dir))
draw_sprite(Spr_ParryStarSparkle,age,parryball.x-lengthdir_x(dist,dir),parryball.y-lengthdir_y(dist,dir))

draw_sprite(Spr_ParryStarSparkle,4,x+lengthdir_x(dist,dir-age*4),y+lengthdir_y(dist,dir-age*4))
draw_sprite(Spr_ParryStarSparkle,4,x-lengthdir_x(dist,dir-age*4),y-lengthdir_y(dist,dir-age*4))
gpu_set_blendmode(bm_normal)
}