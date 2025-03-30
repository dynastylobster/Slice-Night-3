if room = TitleScreenRoom or room = TitleScreenRoom2 or room = TitleScreenOptionsRoom {
		if a_timer != -4 {
			a_timer ++
		}
	}

if global.secondserving {
	global.motuunlocked = true
}

if !global.paused and !igt_done {
	igt_time++	
}
if !global.paused and !igt_done and instance_exists(Obj_Billy) and room != TitleScreenOptionsRoom{
	igt_total_time++	
}

menu_text[6] = "Delete Save File: " + string(global.save) + " (hold)"
if fading_out = true and fade_timer > 0 {
	fade_timer--
	}

if !gamepad_is_connected(0) {
	
if global.jumpslicemap = 0 {
global.key_Z = keyboard_check(ord("Z")) + keyboard_check(vk_space);
global.key_Z_pressed = keyboard_check_pressed(ord("Z")) + keyboard_check_pressed(vk_space);
global.key_X = keyboard_check(ord("X")) + keyboard_check(vk_shift) + mouse_check_button(mb_left)
global.key_X_pressed = keyboard_check_pressed(ord("X")) + keyboard_check_pressed(vk_shift) + mouse_check_button_pressed(mb_left) ;
}
if global.jumpslicemap = 1 {
global.key_Z = keyboard_check(ord("X")) + keyboard_check(vk_space);
global.key_Z_pressed = keyboard_check_pressed(ord("X")) + keyboard_check_pressed(vk_space);
global.key_X = keyboard_check(ord("Z")) + keyboard_check(vk_shift) + mouse_check_button(mb_left);
global.key_X_pressed = keyboard_check_pressed(ord("Z")) + keyboard_check_pressed(vk_shift) + mouse_check_button_pressed(mb_left) ;
}


global.key_C = keyboard_check(ord("C")) + mouse_check_button(mb_right) +keyboard_check(vk_control);
global.key_C_pressed = keyboard_check_pressed(ord("C")) + mouse_check_button_pressed(mb_right) +keyboard_check_pressed(vk_control) ;
global.key_right = keyboard_check(vk_right) + keyboard_check(ord("D"));
global.key_up = keyboard_check(vk_up) + keyboard_check(ord("W"));
global.key_up_pressed = keyboard_check_pressed(vk_up) + keyboard_check_pressed(ord("W"));
global.key_left = keyboard_check(vk_left) + keyboard_check(ord("A"));
global.key_down = keyboard_check(vk_down) + keyboard_check(ord("S"));
global.key_down_pressed = keyboard_check_pressed(vk_down) + keyboard_check_pressed(ord("S"));
global.key_start = keyboard_check_pressed(vk_enter) + keyboard_check_pressed(vk_escape) + keyboard_check_pressed(ord("P"));
global.key_right_pressed = keyboard_check_pressed(vk_right)  + keyboard_check_pressed(ord("D"));
global.key_left_pressed = keyboard_check_pressed(vk_left)  + keyboard_check_pressed(ord("A"));

global.key_right_released = keyboard_check_released(vk_right);
global.key_left_released = keyboard_check_released(vk_left);
	} else {

if global.jumpslicemap = 0 
{
global.key_Z = keyboard_check(ord("Z")) + gamepad_button_check(0,gp_face1) + keyboard_check(vk_space);
global.key_Z_pressed = keyboard_check_pressed(ord("Z")) + gamepad_button_check_pressed(0,gp_face1)  + keyboard_check_pressed(vk_space);
global.key_X = keyboard_check(ord("X")) + gamepad_button_check(0,gp_face3) + keyboard_check(vk_shift) + mouse_check_button(mb_left);
global.key_X_pressed = keyboard_check_pressed(ord("X")) + gamepad_button_check_pressed(0,gp_face3) + keyboard_check_pressed(vk_shift) + mouse_check_button_pressed(mb_left) ;
}

if global.jumpslicemap = 1
{
global.key_Z = keyboard_check(ord("X")) + gamepad_button_check(0,gp_face1) + keyboard_check(vk_space);
global.key_Z_pressed = keyboard_check_pressed(ord("X")) + gamepad_button_check_pressed(0,gp_face1)  + keyboard_check_pressed(vk_space);
global.key_X = keyboard_check(ord("Z")) + gamepad_button_check(0,gp_face3) + keyboard_check(vk_shift) + mouse_check_button(mb_left);
global.key_X_pressed = keyboard_check_pressed(ord("Z")) + gamepad_button_check_pressed(0,gp_face3) + keyboard_check_pressed(vk_shift) + mouse_check_button_pressed(mb_left) ;
}


global.key_C = keyboard_check(ord("C")) + gamepad_button_check(0,gp_face2) + mouse_check_button(mb_right) +keyboard_check(vk_control) + gamepad_button_check(0,gp_shoulderl) + gamepad_button_check(0,gp_shoulderr);
global.key_C_pressed = keyboard_check_pressed(ord("C")) + mouse_check_button_pressed(mb_right) +keyboard_check_pressed(vk_control) + gamepad_button_check_pressed(0,gp_face2) + gamepad_button_check_pressed(0,gp_shoulderl) + gamepad_button_check_pressed(0,gp_shoulderr) ;
//keyboard_check_pressed(ord("C")) + mouse_check_button_pressed(mb_right) +keyboard_check_pressed(vk_control)
global.key_right = keyboard_check(vk_right) + gamepad_button_check(0,gp_padr) + keyboard_check(ord("D"));
global.key_left = keyboard_check(vk_left) + gamepad_button_check(0,gp_padl) + keyboard_check(ord("A"));
global.key_up = keyboard_check(vk_up) + gamepad_button_check(0,gp_padu) + keyboard_check(ord("W"));
global.key_up_pressed = keyboard_check_pressed(vk_up) + gamepad_button_check_pressed(0,gp_padu) + keyboard_check_pressed(ord("W"));

global.key_down = keyboard_check(vk_down) + gamepad_button_check(0,gp_padd) + keyboard_check(ord("S")) ;
global.key_down_pressed = keyboard_check_pressed(vk_down) + gamepad_button_check_pressed(0,gp_padd) + keyboard_check_pressed(ord("S"));
global.key_start = keyboard_check_pressed(vk_enter)+ gamepad_button_check_pressed(0,gp_start) + keyboard_check_pressed(vk_escape) + keyboard_check_pressed(ord("P"));
global.key_right_released = keyboard_check_released(vk_right) + gamepad_button_check_released(0,gp_padr);
global.key_left_released = keyboard_check_released(vk_left) + gamepad_button_check_released(0,gp_padl);

global.key_right_pressed = keyboard_check_pressed(vk_right) + gamepad_button_check_pressed(0,gp_padr) + keyboard_check_pressed(ord("D"));
global.key_left_pressed = keyboard_check_pressed(vk_left) + gamepad_button_check_pressed(0,gp_padl) + keyboard_check_pressed(ord("A"));
	}

if instance_exists(Obj_FlatBoofer) {
if Obj_FlatBoofer.sprite_index = Spr_FlatBoofer_Active or  Obj_FlatBoofer.sprite_index = Spr_ShitBoofer_Active {
	global.key_Z = true
	if instance_exists(Obj_Billy) {
		with(Obj_Billy) {
			if Obj_FlatBoofer.alarm[0] > 35 {
			if x > Obj_FlatBoofer.x then global.key_right = false
			if x < Obj_FlatBoofer.x then global.key_left = false
				}
			}
		Obj_Billy.xspeed = clamp(Obj_Billy.xspeed,-7,7)
		}
	}

}

	
if global.paused {
	if keyboard_check(ord("R")) {
		audio_stop_all();
		room_restart();
		}
	if room != TitleScreenOptionsRoom audio_pause_sound(global.music)
	if alarm[1] > 0 alarm[1]++
} else {
if global.music != noone {
	if !instance_exists(Obj_Radio) {
	audio_resume_sound(global.music)} else {
	if Obj_Radio.playing = false then audio_resume_sound(global.music)
	}
}
}

if global.key_start and !instance_exists(Obj_Title) {
global.paused = !global.paused	
audio_play_sound(Snd_Wizard_TP,0,0,global.SFXvolume/2,0,0.75)
audio_play_sound(Snd_SliceReverse,0,0,global.SFXvolume,0,0.75)
audio_play_sound(Snd_Checkpoint,0,0,global.SFXvolume/1.5,0,1)
menu_index = 0
}


/// Hey Ashley!

if global.paused {
var confirmed = (global.key_Z_pressed || global.key_X_pressed);
var updown = (global.key_down_pressed - global.key_up_pressed);
var leftright = (global.key_right_pressed - global.key_left_pressed);
var esc = global.key_start;

if (esc) {
menuType = "Start";
}

if (updown != 0) {
	var ourMenu;
	switch (menuType) {
		case "Start":
		ourMenu = menuOp;
		break;
		case "Settings":
		ourMenu = settingsSubmenuOp;
		break;
	}
		_index += updown;
		if (_index < 0) { _index = array_length(ourMenu) - 1; }
		if (_index >= array_length(ourMenu)) { _index = 0; }
		menuIndex = ourMenu[_index];
	}


var humanCostumes = ["Billy", "Miley", "Billy (Fox)", "Miley (Fox)", "Billy (SMW)"];
//
var robotCostumes = [];
if (global.motuunlocked) { array_push(robotCostumes, "Motu"); }
var coyoteCostumes = [];
if (global.voidunlocked) { array_push(coyoteCostumes, "Void", "Void (Clown)"); }

var acceptableCostumes = [humanCostumes, robotCostumes, coyoteCostumes];

if (leftright != 0 && menuType == "Settings") {
		switch(menuIndex) {
		case "Music Volume": 
		global.musicvolume += leftright *0.05
		if global.musicvolume > 2 global.musicvolume = 2
		if global.musicvolume < 0 global.musicvolume = 0
		audio_play_sound(Snd_jump,0,0,global.musicvolume)
		break;
		case "SFX Volume":
		global.SFXvolume += leftright *0.05
		if global.SFXvolume > 2 global.SFXvolume = 2
		if global.SFXvolume < 0 global.SFXvolume = 0
		audio_play_sound(Snd_jump,0,0,global.SFXvolume)
		break;		
		
		}
	}

if (confirmed && menuType == "Start") {
switch(menuIndex) {
	case "Resume":
	global.paused = false;
	break;
	case "Character":
		var nextChar = (array_get_index(characters, global.character) + 1);
		try {
			while (array_length(acceptableCostumes[nextChar]) == 0) {
			nextChar++;
			}
		} catch (err) { nextChar = 0; }
			global.character = characters[nextChar];
			global.costume = acceptableCostumes[array_get_index(characters, global.character)][0];
			// SAVE TO FILE
				if instance_exists(Obj_NPCMotuBilly) {
					if global.character = "Human" {Obj_NPCMotuBilly.image_index = 0; global.motu = false}
					if global.character = "Robot" {Obj_NPCMotuBilly.image_index = 1; global.motu = true}
				}
	break;
	case "Costume":
		a_timer = -4;
		var ourCosts = acceptableCostumes[array_get_index(characters, global.character)];
		var nextCos = (array_get_index(ourCosts, global.costume) + 1)
			if (nextCos >= array_length(ourCosts)) {
				nextCos = 0;
			}
			global.costume = ourCosts[nextCos];
			
			// SAVE TO FILE
	break;
	case "Settings":
	_index = 0;
	menuType = "Settings";
	break;
	case "Return To Title Screen":
	room_goto(TitleScreenRoom);
	break;
	}
}

if (confirmed && menuType == "Settings") {
switch (menuIndex) {
	case "Music Volume":
	global.musicvolume += 0.05;
	if (global.musicvolume > 2) {global.musicvolume = 0; }
	break;
	case "SFX Volume":
	global.SFXvolume += 0.05;
	if (global.SFXvolume > 2) {global.SFXvolume = 0; }
	break;
	case "Camera Style":
	global.cameraStyle = !global.cameraStyle;
	ini_open("save.ini")
	ini_write_real("Prefrence", "CameraStyle", global.cameraStyle)
	ini_close()
	// save it
	break;
	case "Toggle Run":
	global.togglerun = !global.togglerun
	ini_open("Save.ini")
	ini_write_real("Prefrence", "togglerun", global.togglerun);
	ini_close();
	
	break;
	case "Button Mapping":
	global.jumpslicemap = !global.jumpslicemap;
	break;
	case "Speedrun IGT":
	global.igt = !global.igt
	break;
	case "VSync":
	global.vsync = !global.vsync;
	ini_open("save.ini");
	ini_write_real("Prefrence", "Vsync", global.vsync);
	ini_close();
	break;
	case "Erase Save File":
		deletePhase++;
		if (deletePhase == 6) {
			// Delete file.
			// Play scary noise.
			ini_open("save.ini")
			ini_section_delete(global.save)
			ini_close();
			game_restart();
			deletePhase = 0;
		} else {
			audio_sound_gain(Snd_BillyHurt,2,0);
			audio_sound_gain(Snd_BerryShoot,2,0);
			audio_play_sound(Snd_BerryShoot,0,0,2);
			audio_play_sound(Snd_BillyHurt,0,0,2);
		}
	break;
	case "Main Menu":
	_index = 0;
	menuType = "Start"
	break;
}
}

/*if (menuType == 1) {
	_index = keyBeingRebinded;
	
	if (keyboard_check_pressed(vk_anykey)) {
		if (keyBeingRebinded + 1 < array_length(keysBinded)) {
			keysBinded[keyBeingRebinded] = keyboard_key;
			keyBeingRebinded++;
		} else {
			menuType = 0;
			keyBeingRebinded = 0;
		}
	}
	else if (mouse_check_button_pressed(mb_any)) {
		if (keyBeingRebinded + 1 < array_length(keysBinded)) {
			keysBinded[keyBeingRebinded] = mouse_button;
			keyBeingRebinded++;
		} else {
			menuType = 0;
			keyBeingRebinded = 0;
		}
	}
}
*/
}

/*keysbinded[]
0 = up
1 = left
2 = down
3 = right
4 = run
5 = jump
6 = slice
[12:50 AM]
*/

/*
if !gamepad_is_connected(0) 
{
global.key_up = keyboard_check(keysBinded[0]) + keyboard_check(vk_up)
global.key_left = keyboard_check(keysBinded[1]) + keyboard_check(vk_left)
global.key_down = keyboard_check(keysBinded[2]) + keyboard_check(vk_down)
global.key_right = keyboard_check(keysBinded[3]) + keyboard_check(vk_right)
global.key_up_pressed = keyboard_check_pressed(keysBinded[0]) + keyboard_check_pressed(vk_up)
global.key_left_pressed = keyboard_check_pressed(keysBinded[1]) + keyboard_check_pressed(vk_left)
global.key_down_pressed = keyboard_check_pressed(keysBinded[2]) + keyboard_check_pressed(vk_down)
global.key_right_pressed = keyboard_check_pressed(keysBinded[3]) + keyboard_check_pressed(vk_right)
global.key_C = keyboard_check(keysBinded[4])
global.key_C_pressed = keyboard_check_pressed(keysBinded[4])
global.key_Z = keyboard_check(keysBinded[5])
global.key_Z_pressed = keyboard_check_pressed(keysBinded[5])
global.key_X = keyboard_check(keysBinded[6])
global.key_X_pressed = keyboard_check_pressed(keysBinded[6])
} else {
	var	key_up = keyboard_check(keysBinded[0]) + keyboard_check(vk_up)
	var	key_left = keyboard_check(keysBinded[1]) + keyboard_check(vk_left)
	var	key_down = keyboard_check(keysBinded[2]) + keyboard_check(vk_down)
	var	key_right = keyboard_check(keysBinded[3]) + keyboard_check(vk_right)
    var	key_up_pressed = keyboard_check_pressed(keysBinded[0]) + keyboard_check_pressed(vk_up)
	var	key_left_pressed = keyboard_check_pressed(keysBinded[1]) + keyboard_check_pressed(vk_left)
	var	key_down_pressed = keyboard_check_pressed(keysBinded[2])  + keyboard_check_pressed(vk_down)
	var	key_right_pressed = keyboard_check_pressed(keysBinded[3]) + keyboard_check_pressed(vk_right)
	var	key_C = keyboard_check(keysBinded[4])
	var	key_C_pressed = keyboard_check_pressed(keysBinded[4])
	var	key_Z = keyboard_check(keysBinded[5])
	var	key_Z_pressed = keyboard_check_pressed(keysBinded[5])
	var	key_X = keyboard_check(keysBinded[6])
	var	key_X_pressed = keyboard_check_pressed(keysBinded[6])
	
	global.key_up = key_up + gamepad_button_check(0,gp_padu)
	global.key_left = key_left + gamepad_button_check(0,gp_padl)
	global.key_down = key_down + gamepad_button_check(0,gp_padu)
	global.key_right = key_right + gamepad_button_check(0,gp_padl)	
		global.key_up_pressed = key_up_pressed + gamepad_button_check_pressed(0,gp_padu)
	global.key_left_pressed = key_left_pressed + gamepad_button_check_pressed(0,gp_padl)
	global.key_down_pressed = key_down_pressed + gamepad_button_check_pressed(0,gp_padu)
	global.key_right_pressed = key_right_pressed + gamepad_button_check_pressed(0,gp_padl)	
	global.key_Z = key_Z + gamepad_button_check(0,gp_face1)
	global.key_Z_pressed = key_Z_pressed + gamepad_button_check_pressed(0,gp_face1)
	global.key_X = key_X + gamepad_button_check(0,gp_face3)
	global.key_X_pressed = key_X_pressed + gamepad_button_check_pressed(0,gp_face3)
	global.key_C = key_C + gamepad_button_check(0,gp_face2) +gamepad_button_check(0,gp_shoulderl) + gamepad_button_check(0,gp_shoulderr)
	global.key_C_pressed = key_C_pressed + gamepad_button_check_pressed(0,gp_face2) +gamepad_button_check_pressed(0,gp_shoulderl) + gamepad_button_check_pressed(0,gp_shoulderr)
	} */

/// Here's the menu code! ^^^

//if global.paused {
//if menu_index = 2 {
//	if global.key_Z_pressed or global.key_X_pressed then global.jumpslicemap = !global.jumpslicemap
//	}
	
 /* if menu_index = 5 {
		if !global.secondserving {
if global.key_Z_pressed or global.key_X_pressed then global.billyfox = !global.billyfox	
		} else {
		if global.key_Z_pressed or global.key_X_pressed then global.motu = !global.motu		
		}
		
} */
//}

if !instance_exists(Obj_Key) {
	if instance_exists(Obj_LockBlock) {
		if Obj_LockBlock.image_speed = 0 {
		audio_play_sound(Snd_BlockBreak,0,0)
		audio_play_sound(Snd_BlockBreak,0,0)
		audio_play_sound(Snd_BlockBreak,0,0)
		audio_play_sound(Snd_BlockBreak,0,0)
		}
	with(Obj_LockBlock) {
		image_speed = 1
		}
	}
	}

if instance_exists(Obj_BasketLockBlock) {
		if Obj_BasketLockBlock.image_index >= 2.5 and !audio_is_playing(Snd_BlockBreak){
		audio_play_sound(Snd_BlockBreak,0,0)
		audio_play_sound(Snd_BlockBreak,0,0)
		audio_play_sound(Snd_BlockBreak,0,0)
		audio_play_sound(Snd_BlockBreak,0,0)
		}
}
	
	
if !instance_exists(Obj_BlueKey) {
	if instance_exists(Obj_GoldLockBlock) {
		if Obj_GoldLockBlock.image_speed = 0 {
		audio_play_sound(Snd_BlockBreak,0,0)
		audio_play_sound(Snd_BlockBreak,0,0)
		audio_play_sound(Snd_BlockBreak,0,0)
		audio_play_sound(Snd_BlockBreak,0,0)
		}
	with(Obj_GoldLockBlock) {
		image_speed = 1
		}
	}
	}
global.confetti_id ++




	
if keyboard_check_pressed(ord("M")) {
audio_stop_all();
global.music = noone	
}

if instance_exists(Obj_SilentRoomChange) {
	surface_resize(application_surface,1920,1080);	
	window_size = 4.5
	} else {
	window_size = ceil(window_size)
	surface_resize(application_surface,426*window_size,240*window_size);	
	}

if global.paused {
	if global.key_up_pressed or global.key_down_pressed audio_play_sound(Snd_jump,0,0);
	if global.key_X_pressed or global.key_Z_pressed audio_play_sound(Snd_Slice,0,0,0.6,0,1.2);
	//if global.key_up_pressed menu_index -= 1
	//	if global.key_down_pressed menu_index += 1
	//	if menu_index <0 then menu_index = 8
	//	if menu_index >8 then menu_index = 0
		}
/*
	if global.key_up_pressed then menu_index -= 1
	if global.key_down_pressed then menu_index += 1

if menu_index <0 then menu_index = 8
if menu_index >8 then menu_index = 0



if menu_index = 1 {
if global.key_Z_pressed or global.key_X_pressed then global.musicvolume += 0.25	
}

if global.musicvolume > 2 then global.musicvolume = 0

if menu_index = 4 {
if global.key_Z_pressed or global.key_X_pressed then global.SFXvolume += 0.25	
}

if global.SFXvolume > 2 then global.SFXvolume = 0

}
if menu_index = 0 and (global.key_Z_pressed or global.key_X_pressed) {
global.paused = false	
}

if menu_index = 3 and (global.key_Z_pressed or global.key_X_pressed) {
	room_goto(TitleScreenRoom)
	menu_index = 0
}

if room = TitleScreenOptionsRoom {
		if menu_index < 1 then menu_index = 8
		if menu_index > 8 then menu_index = 1;
		if menu_index = 6 {
			if global.key_down menu_index = 7
			if global.key_up menu_index = 5
		}
	}*/
	
/*if menu_index = 7 {
	if global.key_Z_pressed or global.key_X_pressed then global.vsync = !global.vsync
	if global.key_Z_pressed or global.key_X_pressed
		{
			display_reset(display_aa, global.vsync);
		}
	ini_open("save.ini")
		ini_write_real("Prefrence","Vsync",global.vsync);
	ini_close();
	
	if global.vsync = true {
	menu_text[7] = "Vsync: ON"
	} else {
	menu_text[7] = "Vsync: OFF"
	}
	
	
	
}*/

/*if menu_index = 8 {
		if global.key_Z_pressed or global.key_X_pressed {
			global.fem = !global.fem
		}

	}

if global.fem {
	menu_text[8] = "Feminine Miley: "
} else {
	menu_text[8] = "Feminine Billy: "
	}*/

	/*if (menu_index = 5) {
		if global.key_Z_pressed or global.key_X_pressed {
			var nextChar = (array_get_index(characters, global.character) + 1);
			if (nextChar >= array_length(characters)) {
			nextChar = 0;
			}
			global.character = characters[nextChar];
			
			// save
			
			if global.character = "Robot" {
					global.costume = "Motu"
				}
			if global.character = "Coyote" {
				 global.costume = "Void"
				}
			if global.character = "Human" {
					if (global.costume = "Motu" || global.costume = "Void") global.costume = "Billy"
				}
		}

	}
	
	menu_text[5] = ("Character: " + global.character)
	if (menu_index = 8) {
		if global.key_Z_pressed or global.key_X_pressed {
			var nextCos = (array_get_index(costumes, global.costume) + 1)
			if (nextCos >= array_length(costumes)) {
				nextCos = 0;
			}
			global.costume = costumes[nextCos];
			
			// save
			if global.character = "Human" {
					if (global.costume = "Motu" || global.costume = "Void") global.costume = "Billy"
				}
			if global.character = "Robot" {
					global.costume = "Motu"
				}
				
			if global.character = "Coyote" {
					global.costume = "Void"
				}
			
		}

	}
	
	menu_text[8] = ("Costume: " + global.costume);*/
	
audio_sound_gain(global.music,global.musicvolume,0); 

audio_sound_gain(Snd_NormalClear,global.musicvolume,0); 
audio_sound_gain(Snd_SecretClear,global.SFXvolume,0); 
ini_open("save.ini")
audio_sound_gain(Snd_SecretUnlock, ini_read_real("Prefrence","MusicVolume",1) ,0); 
ini_close();
audio_sound_gain(Snd_SpecialClear,global.musicvolume,0); 

audio_sound_gain(Snd_jump,global.SFXvolume,0);
audio_sound_gain(Snd_Slice,global.SFXvolume,0);
audio_sound_gain(Snd_land,global.SFXvolume,0);
audio_sound_gain(Snd_BlockBreak,global.SFXvolume,0);
audio_sound_gain(Snd_EnemyExplode,global.SFXvolume,0);
audio_sound_gain(Snd_Bounce,global.SFXvolume,0);
audio_sound_gain(Snd_Booster,global.SFXvolume,0);
audio_sound_gain(Snd_Checkpoint,global.SFXvolume,0);
audio_sound_gain(Snd_Key,global.SFXvolume,0);
audio_sound_gain(Snd_Step,global.SFXvolume*!global.paused,0);
audio_sound_gain(Snd_Die,global.SFXvolume,0);
audio_sound_gain(Snd_land,global.SFXvolume,0);
audio_sound_gain(Snd_BillyHurt,global.SFXvolume,0);
audio_sound_gain(Snd_BerryShoot,global.SFXvolume,0);
audio_sound_gain(Snd_FishJump,global.SFXvolume*2,0);
audio_sound_gain(Snd_BillyShipShoot,global.SFXvolume,0);
audio_sound_gain(Snd_Absorption,global.SFXvolume,0);

if instance_exists(Obj_Billy) {
if Obj_Billy.dead = true {
deathage ++	
}
if deathage > 0 and Obj_Billy.dead = false then deathage -=3.5
if deathage < 0 then deathage = 0
}
if !global.paused {
if unpausetimer > 0 unpausetimer--
} 
if global.paused {
unpausetimer = 4	
}

/*if menu_index = 6 {
	if global.key_Z or global.key_X {
		deletetimer += 2;
		audio_sound_gain(Snd_BillyHurt,2,0)
		audio_sound_gain(Snd_BerryShoot,2,0)
		if !audio_is_playing(Snd_BillyHurt) {
			audio_play_sound(Snd_BerryShoot,0,0,2);
			audio_play_sound(Snd_BillyHurt,0,0,2);
			}
		
		} else if deletetimer > 0 deletetimer-= 5
	} else deletetimer = 0;*/
	
	
	if deletetimer >= 426 {
		ini_open("save.ini")
		ini_section_delete(global.save)
		ini_close();
		game_restart();
		}
		
if global.key_start {
ini_open("save.ini")

ini_write_real("Prefrence","MusicVolume",global.musicvolume);
ini_write_real("Prefrence","SFXVolume",global.SFXvolume);
ini_write_real("Prefrence","Fox",global.billyfox);
ini_write_real("Prefrence","ZXFlip",global.jumpslicemap);
ini_write_real("Preference","Fem",global.fem)

ini_close();
	}
	
if global.key_start and instance_exists(Obj_Title) {
		enterpresses ++
	}
if enterpresses >= 3 
{	
	Obj_ClickRoom.locked = false;
ini_open("save.ini")
ini_write_real("save5","beaten",true);
ini_close();
if !global.beaten 	audio_play_sound(Snd_Key,0,0);
global.beaten = true
}

if room = TitleScreenOptionsRoom then global.paused = true;

if audio_is_playing(Snd_SecretUnlock) {
audio_sound_gain(global.music,0,0);
audio_stop_sound(Snd_Key)

} else {
	audio_sound_gain(global.music,global.musicvolume,0);
	if instance_number(Obj_QuestionPickup) = 0 and global.total_question > 0 and global.music != noone and !gotthem{
		audio_play_sound(Snd_SecretUnlock,0,0)
		gotthem = true;
		}
		
		
		}
/*if global.secondserving {
	menu_text[5] = "Playable Motu: "
		global.billyfox = true
	} else {
	
	if !global.fem menu_text[5] = "Billy Is A Fennec Fox: "	
	if global.fem menu_text[5] = "Miley Is A Fennec Fox: "	
	}*/
if global.paused {
	if global.key_up_pressed or global.key_down_pressed or global.key_left or global.key_right or global.key_X_pressed or global.key_Z_pressed {
			if global.fem = true {
			ini_open("save.ini")
			ini_write_real("Prefrence","Fem",1)
			ini_close();	
			} else {
				ini_open("save.ini")
			ini_write_real("Prefrence","Fem",0)
			ini_close();	
			}	
	}
}

if a_timer != -4 {
if global.key_up_pressed or global.key_down_pressed or global.key_right_pressed or global.key_left_pressed or global.key_Z_pressed or global.key_X_pressed {
    a_timer += 100	
  }
}