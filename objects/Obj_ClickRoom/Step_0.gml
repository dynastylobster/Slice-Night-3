/// @description Insert description here
// You can write your code in this editor
//var xborder = x + sprite_width
//var yborder = y + sprite_height



if green sprite_index = Spr_ClickRoom_Green;
if menuthing = "Options" green = false
if !green and !locked sprite_index = Spr_ClickRoom

age++
if age > 8 {


if place_meeting(x,y,Obj_ButtonSelect){
	
var _realcamy = lerp(camera_get_view_y(view_camera[0]),_camy,0.125);
camera_set_view_pos(view_camera[0],0,clamp(_realcamy,0,room_height-240))
	
if image_index = 0 {
	audio_stop_sound(Snd_Jump)
	audio_play_sound(Snd_Jump,0,0)	
	image_index = 1	
	}
}	

if !place_meeting(x,y,Obj_ButtonSelect) {
	if instance_exists(Obj_ButtonSelect) image_index = 0
}

if menuthing = "Extras" and !locked {
	if GameObject.enterpresses >= 3 {
	displaytext = "Cheated Extras"
	}
	

	}

if place_meeting(x,y,Obj_ButtonSelect) {

if global.key_Z_pressed or global.key_X_pressed {
if !locked audio_play_sound(Snd_Slice,0,0)
if locked audio_play_sound(Snd_Land,0,0,global.SFXvolume*2);
if func = "roomselect" {
room_goto(destination)
}

if func = "menu"	{
	
	if menuthing = "Extra Checkpoints" {
		global.extracheckpoints = !global.extracheckpoints;
	}
	
	if menuthing = "Options" {
		room_goto(TitleScreenOptionsRoom);	
	}
	
	if menuthing = "Extras" and !locked {
			room_goto(TitleScreenRoom3);
	}
	
	if menuthing = "Extra Levels" {
		room_goto(Extra_Level_Select);
	}
	
	if menuthing = "Exit Game" {
		game_end();
		}
	
	
	if menuthing = "Start Game" {
			room_goto(TitleScreenRoom2);
	}
	if menuthing = "back" {
	if room = TitleScreenRoom3 then	room_goto(TitleScreenRoom)
	if room = TitleScreenRoom2 then room_goto(TitleScreenRoom)
	if room = Click_here_for_level_select or room = Extra_Level_Select then room_goto(TitleScreenRoom3);
	if room = TitleScreenRoomSecondServing room_goto(TitleScreenRoom)
	}
	
	if menuthing = "Extra Checkpoints" {
		if global.extracheckpoints = true then displaytext = "More Checkpoint:ON"
		if global.extracheckpoints = false then displaytext = "More Checkpoint:OFF"
	}
	
	if menuthing = "file1" or menuthing = "file2" or menuthing = "file3" {
	global.totalsecret = totalsecret
	global.totalstage = totalstage
	}
	
	if menuthing = "file1" {
	global.save = "file1"
	room_goto(dest_room);
	}
	
		if menuthing = "file2" {
	global.save = "file2"
	room_goto(dest_room);
	}
	
			if menuthing = "file3" {
	global.save = "file3"
	room_goto(dest_room);
	}
	
		if menuthing = "file4" {
	global.save = "file4"
	room_goto(dest_room);
	}
	
		if menuthing = "file5" {
	global.save = "file5"
	room_goto(dest_room);
	}
	
			if menuthing = "file6" {
	global.save = "file6"
	room_goto(dest_room);
	}
	

	
	
}


}


}


}

if destination = TitleScreenRoomSecondServing {
		if sprite_index = Spr_ClickRoom or sprite_index = Spr_ClickRoom_Green {
				sprite_index = Spr_ClickRoom_Red
			}
	}
	
	if !instance_exists(Obj_BonusContent) {
	if destination = TitleScreenRoomSecondServing {
	if !global.beaten {
			y = -200
		} else y = starty
	displaytext = "Second Serving"
	} 
	} else {
	if destination = TitleScreenRoomSecondServing {
	if Obj_BonusContent.image_alpha = 0 {
			y = -200
		} else 
		{
			if place_meeting(x,y,[Obj_Billy,Obj_SliceParent]) {room_goto(TitleScreenRoomSecondServing)}
			y = starty
		}
		displaytext = "Second Serving"
	} 	
		
	}
	