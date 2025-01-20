/// @description Insert description here
// You can write your code in this editor
//draw_sprite(Spr_HP,0,cam_x+4,cam_y+4)
draw_self()
/*
 if instance_exists(Obj_Billy) {
draw_set_font(UndertaleFont)

draw_sprite(Spr_HP,0,clamp(Obj_Billy.x-213,0,room_width-426)+4,camera_get_view_y(view_camera[0])+4)
if instance_exists(Obj_Billy) {
draw_sprite(Spr_HP,Obj_Billy.hp,clamp(Obj_Billy.x-213,0,room_width-426)+4,camera_get_view_y(view_camera[0])+4)
if Obj_Billy.sprite_index = Spr_BillyHurt {
draw_sprite(Spr_HP,4,clamp(Obj_Billy.x-213,0,room_width-426)+4,camera_get_view_y(view_camera[0])+4)	
}
}
draw_self()

if global.paused {
	draw_set_alpha(0.25)
	draw_set_color(c_black)
	draw_rectangle(0,0,room_width,room_height,false)
	draw_set_color(c_white)
	draw_set_alpha(1)
	draw_sprite(Spr_Paused,0,camera_get_view_x(view_camera[0])+213,camera_get_view_y(view_camera[0])+19)
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

if instance_number(Obj_QuestionPickup) < global.total_question
	{
		draw_set_color(c_black)
	draw_text(camera_get_view_x(view_camera[0])+97,camera_get_view_y(view_camera[0])+9,"  : "+string(global.total_question-instance_number(Obj_QuestionPickup))+" / "+string(global.total_question))
	draw_set_color(c_white)
	draw_sprite(Spr_QuestionPickup,0,camera_get_view_x(view_camera[0])+86,camera_get_view_y(view_camera[0])+6)
	draw_text(camera_get_view_x(view_camera[0])+96,camera_get_view_y(view_camera[0])+8,"  : "+string(global.total_question-instance_number(Obj_QuestionPickup))+" / "+string(global.total_question))
}
if fading_out and instance_exists(Obj_GoalBox){
with(Obj_GoalBox) {
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
}
 }
//draw_text(0,0,string(window_size))
draw_set_color(c_white)
gpu_set_tex_filter(false);
*/

if global.paused {
		draw_set_color(c_purple)
		draw_set_alpha(0.5)
		draw_rectangle(0,_menuy+(menu_index*16),room_width,_menuy+(menu_index*16)+16,false)
		draw_set_color(c_black)
		draw_set_alpha(0.25)
		draw_rectangle(0,_menuy+(menu_index*16),room_width,_menuy+(menu_index*16)+16,false)
		draw_set_color(c_white)
		draw_set_alpha(1)
	}

if !global.paused {
		if instance_exists(Obj_MotuBoss) or instance_exists(Obj_MotuBoss_Defeat) {
		draw_sprite(Spr_MotuBossHP,0,room_width-135,4)
		}
		if instance_exists(Obj_MotuBoss) {
			draw_sprite(Spr_MotuBossHP,Obj_MotuBoss.hp,room_width-135,4)
			if Obj_MotuBoss.iframes {
				if Obj_MotuBoss.iframe_timer < 20 and Obj_MotuBoss.iframe_timer > 1
				draw_sprite(Spr_MotuBossHP,17,room_width-135,4)
			}
		}
	}

if global.paused {
	draw_set_alpha(0.25)
	draw_set_color(c_black)
	draw_rectangle(0,0,room_width,room_height,false)
	draw_set_color(c_white)
	draw_set_alpha(1)
	if room != TitleScreenOptionsRoom draw_sprite(Spr_Paused,0,camera_get_view_x(view_camera[0])+213,camera_get_view_y(view_camera[0])+19)
	if room = TitleScreenOptionsRoom draw_sprite(Spr_Title,0,213,48)
	}

if global.paused {
	
	/// Draw code! Woohoo!
	draw_set_font(UndertaleFont)
	var extraText = "";
	for (var i = 0; i < array_length(menuOp); i++) {
		switch(menuOp[i]){
			case "Change Character":
			extraText = (": " + global.character);
			break;
			case "Change Costume":
			extraText = (": " + global.costume);
			break;
			case "Music Volume":
				if (global.musicvolume == 2) {
					extraText = "Dropping Something At 4AM";
				} else {
				extraText = (": " + global.musicvolume + "%");
				}
			break;
			case "SFX Volume":
				if (global.SFXvolume == 2) {
					extraText = "Bubsy.";
				} else {
				extraText = (": " + global.SFXvolume + "%");
				}
			break;
			case "Button Mapping":
				if (global.jumpslicemap == 1) {
				extraText = "I have two right hands.";
				} else {
				extraText = "SMBX Style";
				}
			break;
			case "VSync":
			extraText = (": " + global.vsync ? "On" : "Off");
			break;
			case "Erase Save File":
			switch (deletePhase) {
				case 1:
				extraText = ": Are you sure?";
				break;
				case 2:
				extraText = ": Are you really sure?";
				break;
				case 3:
				extraText = ": Are you absolutely sure?";
				break;
				case 4:
				extraText = ": Make sure you want this.";
				break;
				case 5:
				extraText = ": Last chance.";
				break;
				case 6:
				extraText = ": File erased.";
				break;
			}
			break;
		}
		draw_set_color(c_blue);
		draw_text(_menux, _menuy + (16 * (i + 1)), menuOp[i]);
		draw_set_color(c_white);
		draw_text(_menux, _menuy + (16 * (i + 1)) + 1, menuOp[i]);
	}
	
	
	
	
	
	draw_set_color(c_blue);
	draw_set_font(UndertaleFont)
	if room != TitleScreenOptionsRoom draw_text(_menux+1,_menuy+1,string(menu_text[0]))
	if global.musicvolume < 2 {
	draw_text(_menux+1,_menuy+17,string(menu_text[1])+": "+string(global.musicvolume*100)+"%")
	} else {
		draw_text(_menux+1,_menuy+17,string(menu_text[1])+": Dropping Something at 4 AM")
		}
	draw_text(_menux+1,_menuy+33,string(menu_text[2]))
	if global.jumpslicemap = 0 then draw_text(_menux+131,_menuy+33,"<SMBX style>")
	if global.jumpslicemap = 1 then draw_text(_menux+131,_menuy+33,"<I have 2 right hands>")
	
	if global.SFXvolume < 2 {
	draw_text(_menux+1,_menuy+65,string(menu_text[3])+": "+string(global.SFXvolume*100)+"%")
	} else {
		draw_text(_menux+1,_menuy+65,string(menu_text[3])+": Bubsy.")
		}
	
	
	draw_text(_menux+1,_menuy+49,string(menu_text[4]))
	/*if global.billyfox
		{draw_text(_menux+1,_menuy+81,string(menu_text[5])+"Yes!")} else 
		{draw_text(_menux+1,_menuy+81,string(menu_text[5])+"No.")}*/
	
	if room != TitleScreenOptionsRoom draw_text(_menux+1,_menuy+97,string(menu_text[6]))
	
	
	draw_set_color(c_white);
	draw_sprite(Spr_MenuArrow,image_index,_menux,8+_menuy+menu_index*16)
	draw_set_font(UndertaleFont)
	if room != TitleScreenOptionsRoom draw_text(_menux,_menuy,string(menu_text[0]))
	draw_text(_menux,_menuy+32,string(menu_text[2]))
		if global.jumpslicemap = 0 then draw_text(_menux+130,_menuy+32,"<SMBX style>")
	if global.jumpslicemap = 1 then draw_text(_menux+130,_menuy+32,"<I have 2 right hands>")
	if global.musicvolume < 2 {
	draw_text(_menux,_menuy+16,string(menu_text[1])+": "+string(global.musicvolume*100)+"%")
	} else {
		draw_text(_menux,_menuy+16,string(menu_text[1])+": Dropping Something at 4 AM")
		}
		
		if global.SFXvolume < 2 {
	draw_text(_menux,_menuy+64,string(menu_text[3])+": "+string(global.SFXvolume*100)+"%")
	} else {
		draw_text(_menux,_menuy+64,string(menu_text[3])+": Bubsy.")
		}	
	if room != TitleScreenOptionsRoom draw_text(_menux,_menuy+96,string(menu_text[6]))
	
	
		
	draw_text(_menux,_menuy+48,string(menu_text[4]))
	
	draw_set_color(c_blue)
	draw_text(_menux,_menuy+80,menu_text[5])
	draw_set_color(c_white)
	draw_text(_menux,_menuy+79,menu_text[5])
	
	
	/*if !global.secondserving {
	if global.billyfox
		{draw_text(_menux,_menuy+80,string(menu_text[5])+"Yes!")} else 
		{draw_text(_menux,_menuy+80,string(menu_text[5])+"No.")}
	} 
	else
	{ 
	if global.motu
		{draw_text(_menux,_menuy+80,string(menu_text[5])+"Yes!")} else 
		{draw_text(_menux,_menuy+80,string(menu_text[5])+"No.")}
	}*/
		
		draw_set_color(c_blue)
	draw_text(_menux+1,_menuy+114,string(menu_text[7]))
	draw_set_color(c_white)
	draw_text(_menux,_menuy+113,string(menu_text[7]))
	
	draw_set_color(c_blue)
	/*if global.fem {
		draw_text(_menux+1,_menuy+129,string(menu_text[8])+"Yes")
	} else {
		draw_text(_menux+1,_menuy+129,string(menu_text[8])+"No")
	}
	draw_set_color(c_white) 
		if global.fem {
		draw_text(_menux,_menuy+128,string(menu_text[8])+"Yes")
	} else {
		draw_text(_menux,_menuy+128,string(menu_text[8])+"No")
	}*/
	draw_set_color(c_blue)
	draw_text(_menux,_menuy+129,menu_text[8])
	draw_set_color(c_white)
	draw_text(_menux,_menuy+128,menu_text[8])
	
	
}