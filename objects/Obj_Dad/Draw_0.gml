/// @description Insert description here
// You can write your code in this editor

var blackholeleft = false
var blackholeright = false
	
	if x < 77 then blackholeleft = true
	if x > 250 then blackholeright = true
	
	if place_meeting(x,y+6,Obj_Wall) {
		if !blackholeleft and !blackholeright 	draw_sprite_ext(Spr_BillyShadow,0,x,y+19+(floor(image_index)),2,1.5,0,c_black,1);	
		if blackholeleft draw_sprite_ext(Spr_BillyShadow,1,x,y+19+(floor(image_index)),2,1.5,0,c_black,1);	
		if blackholeright draw_sprite_ext(Spr_BillyShadow,2,x,y+19+(floor(image_index)),2,1.5,0,c_black,1);	
	}

if phase = 1 and !instance_exists(Obj_MenaceOrb){
	draw_sprite(Spr_DeathBlockWarning,alarm[2]/5,32,24)
	draw_sprite(Spr_DeathBlockWarning,alarm[2]/5,88,24)
	draw_sprite(Spr_DeathBlockWarning,alarm[2]/5,152,24)
	draw_sprite(Spr_DeathBlockWarning,alarm[2]/5,216,24)
	draw_sprite(Spr_DeathBlockWarning,alarm[2]/5,280,24)
	draw_sprite(Spr_DeathBlockWarning,alarm[2]/5,344,24)
	}

draw_self();
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_black,fadein/60)

draw_sprite(Spr_HPBar_Dad,0,hpx,hpy)
draw_sprite_ext(Spr_HPBar_Dad,1,hpx,hpy, ( (137) / (maxhp) ) * hp, 1, 0, c_white,1)
if hit {
	draw_sprite_ext(Spr_HPBar_Dad,2,hpx,hpy, ( (137) / (maxhp) ) * hp, 1, 0, c_white,1)
}
draw_sprite(Spr_HPBar_Dad,3,hpx+ (( (137) / (maxhp) ) * hp) -1 ,hpy)
if hit {
	draw_sprite(Spr_HPBar_Dad,4,hpx+ (( (137) / (maxhp) ) * hp) -1 ,hpy)
}


draw_sprite(Spr_HPBar_Dad,5,hpx,hpy)
if hit draw_sprite(Spr_HPBar_Dad,6,hpx,hpy)