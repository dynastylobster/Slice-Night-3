/// @description Insert description here
// You can write your code in this editor 

if global.costume = "Billy (SMW)" hpsprite = Spr_HPSMW


var thisNPC = noone;
var thisx = 0;
var thisy = 0;
if instance_exists(Obj_Billy) and instance_exists(Obj_NPC) {
	 thisx = Obj_Billy.x 
	 thisy = Obj_Billy.y 
	thisNPC = instance_nearest(thisx,thisy,Obj_NPC)
	}
if !instance_exists(Obj_NPC) or (instance_exists(Obj_NPC) and thisNPC.drawing = false)
{
	
	
if instance_exists(Obj_Billy) and !instance_exists(Obj_SilentRoomChange) and !instance_exists(Obj_TheEnd) {
draw_set_font(UndertaleFont)

if global.dash and global.costume != "Billy (SMW)" {
	draw_sprite(Spr_DashMeter,Obj_Billy.dashes,clamp(camera_get_view_x(view_camera[0])+2,0,room_width-426)+4,camera_get_view_y(view_camera[0])+4)
}

// Faux Hp Bar
var worncos = string_format_to_filename(global.costume);
var bar = asset_get_index("Spr_HPBar_" + worncos);
var heart = asset_get_index("Spr_HPHeart_" + worncos);
if (bar == -1) { bar = Spr_HPBar_Billy; }
if (heart == -1) { heart = Spr_HPHeart_Billy; }
var customHealthbarHavers = ["Billy_SMW"];

if bar = Spr_HPBar_Billy and !global.secondserving then bar = Spr_HPBar_BillyFirstHalf
if heart = Spr_HPHeart_Billy and !global.secondserving then heart = Spr_HPHeart_Billy_FirstHalf

if (!array_contains(customHealthbarHavers, worncos)) {
draw_sprite(bar, (Obj_Billy.hp >= 3 ? Obj_Billy.hp - 3 : 0), clamp(camera_get_view_x(view_camera[0]) + 2, 0, room_width - 426) + 4, camera_get_view_y(view_camera[0]) + 4);
if (instance_exists(Obj_Billy)) {
	var b = Obj_Billy;
	for (var i = 0; i < b.max_hp; i++) {
		if (i < b.hp) {
			draw_sprite(heart, clamp((i/3) + 1, 0, 3), clamp(camera_get_view_x(view_camera[0]) + 2, 0, room_width - 426) + 11 + (i * 16), camera_get_view_y(view_camera[0]) + 5);
			if Obj_Billy.hit = true and Obj_Billy.i_frames > 30 {
			draw_sprite(heart,3, clamp(camera_get_view_x(view_camera[0]) + 2, 0, room_width - 426) + 11 + (i * 16), camera_get_view_y(view_camera[0]) + 5);
			}
		}
		if (i <= 3 && b.hp <= i) {
			draw_sprite(heart, 0, clamp(camera_get_view_x(view_camera[0]) + 2, 0, room_width - 426) + 11 + (i * 16), camera_get_view_y(view_camera[0]) + 5);
		
		if Obj_Billy.hit = true and Obj_Billy.i_frames > 30 {
			draw_sprite(heart,4, clamp(camera_get_view_x(view_camera[0]) + 2, 0, room_width - 426) + 11 + (i * 16), camera_get_view_y(view_camera[0]) + 5);
			}
		}
	}
}
} else {
if (instance_exists(Obj_Billy)) {
	draw_sprite(hpsprite,0,clamp(camera_get_view_x(view_camera[0])+2,0,room_width-426)+4,camera_get_view_y(view_camera[0])+4)
	draw_sprite(hpsprite,Obj_Billy.hp,clamp(camera_get_view_x(view_camera[0])+2,0,room_width-426)+4,camera_get_view_y(view_camera[0])+4)
	if Obj_Billy.hit = true and Obj_Billy.i_frames > 30 {
		draw_sprite(hpsprite,7,clamp(camera_get_view_x(view_camera[0])+2,0,room_width-426)+4,camera_get_view_y(view_camera[0])+4)	
	}
}
}



//draw_sprite(hpsprite,0,clamp(camera_get_view_x(view_camera[0])+2,0,room_width-426)+4,camera_get_view_y(view_camera[0])+4)
if instance_exists(Obj_Billy) {
//draw_sprite(hpsprite,Obj_Billy.hp,clamp(camera_get_view_x(view_camera[0])+2,0,room_width-426)+4,camera_get_view_y(view_camera[0])+4)
if Obj_Billy.hit = true and Obj_Billy.i_frames > 30 {
//draw_sprite(hpsprite,7,clamp(camera_get_view_x(view_camera[0])+2,0,room_width-426)+4,camera_get_view_y(view_camera[0])+4)	
}
}



	if instance_exists(Obj_Billy) {
	with(Obj_Billy) {
	if place_meeting(x,y,Obj_keylessArea) {
		GameObject.showkeys = false
		} else {
		GameObject.showkeys = true	
		}
	}
	}
if instance_number(Obj_Key) > 0 and showkeys
	{
		draw_set_color(c_black)
	draw_text(camera_get_view_x(view_camera[0])+11,camera_get_view_y(view_camera[0])+26,"  : "+string(global.total_keys-instance_number(Obj_Key))+" / "+string(global.total_keys))
	draw_set_color(c_white)
	draw_sprite(Spr_Key,0,camera_get_view_x(view_camera[0])+2,camera_get_view_y(view_camera[0])+25)
	draw_text(camera_get_view_x(view_camera[0])+10,camera_get_view_y(view_camera[0])+25,"  : "+string(global.total_keys-instance_number(Obj_Key))+" / "+string(global.total_keys))
}

//BLUE KEYS

	if instance_exists(Obj_Billy) {
	with(Obj_Billy) {
	if place_meeting(x,y,Obj_BlueKeylessArea) {
		GameObject.showBkeys = false
		} else {
		GameObject.showBkeys = true	
		}
	}
	}
if instance_number(Obj_BlueKey) > 0 and showBkeys
	{
		draw_set_color(c_black)
	draw_text(camera_get_view_x(view_camera[0])+11,camera_get_view_y(view_camera[0])+42,"  : "+string(global.total_Bkeys-instance_number(Obj_BlueKey))+" / "+string(global.total_Bkeys))
	draw_set_color(c_white)
	draw_sprite(Spr_BlueKey,0,camera_get_view_x(view_camera[0])+2,camera_get_view_y(view_camera[0])+41)
	draw_text(camera_get_view_x(view_camera[0])+10,camera_get_view_y(view_camera[0])+41,"  : "+string(global.total_Bkeys-instance_number(Obj_BlueKey))+" / "+string(global.total_Bkeys))
}






if instance_number(Obj_QuestionPickup) < global.total_question
	{
		draw_set_color(c_black)
	draw_text(camera_get_view_x(view_camera[0])+97,camera_get_view_y(view_camera[0])+9,"  : "+string(global.total_question-instance_number(Obj_QuestionPickup))+" / "+string(global.total_question))
	draw_set_color(c_white)
	draw_sprite(Spr_QuestionPickup,0,camera_get_view_x(view_camera[0])+86,camera_get_view_y(view_camera[0])+6)
	draw_text(camera_get_view_x(view_camera[0])+96,camera_get_view_y(view_camera[0])+8,"  : "+string(global.total_question-instance_number(Obj_QuestionPickup))+" / "+string(global.total_question))
}



}


if fading_out and instance_exists(Obj_GoalBox){
with(Obj_GoalBox) {
	with(EnemyParentObject) {
	instance_destroy();	
	}
	if !place_meeting(x,y,Obj_Billy) instance_destroy();
}
draw_sprite_ext(PinholeSprite,0,instance_nearest(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),Obj_GoalBox).x,instance_nearest(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),Obj_GoalBox).y,(fade_timer/240)+0.5,(fade_timer/240)+0.5,0,c_white,1)
draw_sprite_ext(PinholeSprite,0,instance_nearest(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),Obj_GoalBox).x,instance_nearest(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),Obj_GoalBox).y,(fade_timer/240)+0.25,(fade_timer/240)+0.25,0,c_white,1)
draw_sprite_ext(PinholeSprite,0,instance_nearest(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),Obj_GoalBox).x,instance_nearest(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),Obj_GoalBox).y,(fade_timer/240)+0.15,(fade_timer/240)+0.15,0,c_white,1)
draw_sprite_ext(PinholeSprite,0,instance_nearest(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),Obj_GoalBox).x,instance_nearest(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),Obj_GoalBox).y,(fade_timer/240),(fade_timer/240),0,c_white,1)
draw_set_color(c_black)
draw_set_alpha(1-fade_timer/270)
draw_circle(instance_nearest(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),Obj_GoalBox).x,instance_nearest(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),Obj_GoalBox).y,(fade_timer-270)+5/10,false)
draw_set_color(c_white)
draw_set_alpha(fade_timer/270)
draw_circle(instance_nearest(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),Obj_GoalBox).x,instance_nearest(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),Obj_GoalBox).y,(fade_timer-270)/10,true)
draw_set_alpha(1)

	if instance_exists(Obj_QuestionPickup) {
		draw_set_color(c_blue)
		draw_set_font(BigFont)
	draw_text(camera_get_view_x(view_camera[0])+30,camera_get_view_y(view_camera[0])+9,"  : "+string(global.total_question-instance_number(Obj_QuestionPickup))+" / "+string(global.total_question))
		draw_set_color(c_white)
		draw_sprite_ext(Spr_QuestionPickup,image_index,camera_get_view_x(view_camera[0])+16,camera_get_view_y(view_camera[0])+8,2,2,0,c_white,1)
		draw_text(camera_get_view_x(view_camera[0])+32,camera_get_view_y(view_camera[0])+7,"  : "+string(global.total_question-instance_number(Obj_QuestionPickup))+" / "+string(global.total_question))
	}



}



 }

if instance_exists(Obj_NPC) {
if Obj_NPC.y > room_height and Obj_NPC.y < room_height+3000
{
draw_sprite_ext(Spr_TerrariaDeathMessage,0,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0])+216,1,1,0,c_white,1-(Obj_NPC.y/4000))	
}
}

if global.igt {
	var _y = camera_get_view_y(view_camera[0])+224
	var _x = camera_get_view_x(view_camera[0])+213
	draw_set_halign(fa_center)
		draw_set_font(UndertaleFont)
		draw_set_color(c_blue)
		draw_text(_x,_y,string(floor(igt_time/60/60)mod 60)+":"+string(floor(igt_time/60)mod 60)+":"+string(igt_time mod 100 mod 60))
		draw_set_color(c_white)
		draw_text(_x,_y-1,string(floor(igt_time/60/60)mod 60)+":"+string(floor(igt_time/60)mod 60)+":"+string(igt_time mod 100 mod 60))
		
		var top_y = camera_get_view_y(view_camera[0])+8
			draw_set_font(UndertaleFont)
		draw_set_color(c_blue)
		draw_text(_x,top_y, string(floor(igt_total_time/60/60/60)) + ":"+string(floor(igt_total_time/60/60)mod 60)+":"+string(floor(igt_total_time/60)mod 60)+":"+string(igt_total_time mod 100 mod 60))
		draw_set_color(#60FF99)
		draw_text(_x,top_y-1,string(floor(igt_total_time/60/60/60)) + ":"+string(floor(igt_total_time/60/60)mod 60)+":"+string(floor(igt_total_time/60)mod 60)+":"+string(igt_total_time mod 100 mod 60))
		
		
		draw_set_halign(fa_left)
}

gpu_set_texfilter(true);
draw_set_color(c_black)
if deathage > 0 and instance_exists(Obj_Billy) {
draw_set_alpha(deathage/60)
draw_circle(Obj_Billy.x,Obj_Billy.y,deathage*25,false)
}
draw_set_alpha(1);
draw_set_color(c_white)

if global.paused {
draw_sprite_ext(Spr_Savedatadelete,image_index,cam_x,cam_y,deletetimer,1,0,c_white,1);
	}
	
