/// @description Insert description here
// You can write your code in this editor



if place_meeting(x,y-2,Obj_Billy)
{
draw_sprite_ext(sprite_index,1,draw_x,y,1,image_yscale*(room_height/32),0,c_white,1)
draw_sprite_ext(sprite_index,0,draw_x,y,1,sign(image_yscale),0,c_white,1)

if alarm[1] <= 60 {
		draw_sprite_ext(Spr_ShiftPillarCopper_Warn,0,draw_x,y,1,sign(image_yscale),0,c_white,1)
	}
if alarm[1] <= 40 {
		draw_sprite_ext(Spr_ShiftPillarCopper_Warn,1,draw_x,y,1,sign(image_yscale),0,c_white,1)
	}
if alarm[1] <= 15 {
		draw_sprite_ext(Spr_ShiftPillarCopper_Warn,2,draw_x,y,1,sign(image_yscale),0,c_white,1)
	}


} else {
	draw_sprite_ext(sprite_index,1,x,y,1,image_yscale*(room_height/32),0,c_white,1)
	draw_sprite_ext(sprite_index,0,x,y,1,sign(image_yscale),0,c_white,1)
	
if alarm[1] <= 60 {
		draw_sprite_ext(Spr_ShiftPillarCopper_Warn,0,x,y,1,sign(image_yscale),0,c_white,1)
	}
if alarm[1] <= 40 {
		draw_sprite_ext(Spr_ShiftPillarCopper_Warn,1,x,y,1,sign(image_yscale),0,c_white,1)
	}
if alarm[1] <= 15 {
		draw_sprite_ext(Spr_ShiftPillarCopper_Warn,2,x,y,1,sign(image_yscale),0,c_white,1)
	}

}

if zapping {
	if place_meeting(x,y-2,Obj_Billy)
{
draw_sprite_ext(sprite_index,3,draw_x,y,1,image_yscale*(room_height/32),0,c_white,1)
draw_sprite_ext(sprite_index,2,draw_x,y,1,sign(image_yscale),0,c_white,1)
} else {
	draw_sprite_ext(sprite_index,3,x,y,1,image_yscale*(room_height/32),0,c_white,1)
	draw_sprite_ext(sprite_index,2,x,y,1,sign(image_yscale),0,c_white,1)
}	
	}

