/// @description Insert description here
// You can write your code in this editor 



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

if global.dash {
	draw_sprite(Spr_DashMeter,Obj_Billy.dashes,clamp(camera_get_view_x(view_camera[0])+2,0,room_width-426)+4,camera_get_view_y(view_camera[0])+4)
}

draw_sprite(hpsprite,0,clamp(camera_get_view_x(view_camera[0])+2,0,room_width-426)+4,camera_get_view_y(view_camera[0])+4)
if instance_exists(Obj_Billy) {
draw_sprite(hpsprite,Obj_Billy.hp,clamp(camera_get_view_x(view_camera[0])+2,0,room_width-426)+4,camera_get_view_y(view_camera[0])+4)
if Obj_Billy.sprite_index = Spr_BillyHurt or Obj_Billy.sprite_index = Spr_PMotuHurt {
draw_sprite(hpsprite,7,clamp(camera_get_view_x(view_camera[0])+2,0,room_width-426)+4,camera_get_view_y(view_camera[0])+4)	
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