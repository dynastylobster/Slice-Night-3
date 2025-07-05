/// @description Insert description here
// You can write your code in this editor


draw_set_color(#A0410D)
draw_line_width(x,y-27,moon1x,y,1)
draw_line_width(x,y-27,moon2x,y,1)

draw_line_width(moon1x,y,moon1x,moony+moonyoffset,1)
draw_line_width(moon2x,y,moon2x,moony-moonyoffset,1)

draw_line_width(star1x-1,y,star1x-1,moony+moonyoffset*4,1)
draw_line_width(star2x-1,y,star2x-1,moony-moonyoffset*4,1)

draw_set_color(c_white)

if abs(sin(age/4)) > 0.98 {
	cycle ++
	}

if cycle %2 = 0 {
draw_sprite(sprite_index,1,moon1x,y)
draw_self();
draw_sprite(sprite_index,1,moon2x,y)
draw_sprite(sprite_index,1,star1x,y)
draw_sprite(sprite_index,1,star2x,y)
} else {
	
	draw_sprite(sprite_index,1,moon2x,y)

draw_self();
draw_sprite(sprite_index,1,moon1x,y)
draw_sprite(sprite_index,1,star1x,y)
draw_sprite(sprite_index,1,star2x,y)

}
gpu_set_blendmode(bm_add)
draw_sprite_ext(Spr_GoalBoxSparkle,0,star1x,moony+ moonyoffset*4,1,1,0,#FF99FF,1);
draw_sprite_ext(Spr_GoalBoxSparkle,0,star2x,moony- moonyoffset*4,1,1,0,#FF99FF,1);
gpu_set_blendmode(bm_normal)

//draw_sprite_ext(Spr_MoonDangle, 6.5+((sin(age/4))*4),moon1x,moony+moonyoffset,1,1,0,c_white,1 );
//draw_sprite_ext(Spr_MoonDangle, 6.5+((cos(age/4))*4),moon2x,moony-moonyoffset,1,1,0,c_white,1 );