/// @description Set Up controls
hpsprite = Spr_HP
global.motu = false

characters = ["Human", "Robot", "Coyote"]
costumes = ["Billy", "Miley", "Billy (Fox)", "Miley (Fox)", "Motu", "Void"];
//charDesc = ["Human.\nNothing special.", "Robotic.\nMoves slower, but attacks harder.\nIncreased trick speed, cannot flameslice.", "Coyote.\nMassively increased movement abilities.\nIneffective damage."];
global.character = characters[0];
global.costume = costumes[0];

menuOp = ["Resume", "Change Character", "Change Costume", "Music Volume", "SFX Volume", "Button Mapping", "VSync", "Erase Save File", "Return To Title Screen"];
deletePhase = 0;
menuIndex = menuOp[0]


ini_open("save.ini") 
	global.vsync = ini_read_real("Prefrence","Vsync",false);
ini_close();

global.music = Snd_TitleMusic
global.extracheckpoints = false;
showkeys = false
fastONOFF = false
alarm[1] = 100
global.total_keys = 0
global.total_question = 0
global.total_Bkeys = 0
prevmusic = Snd_TitleMusic;
global.music = prevmusic;
enterpresses = 0;


showBkeys = false


gotthem = false;

deathage = 0

unpausetimer = 4;

fading_out = false
fade_timer = 270
menu_index = 0
deletetimer = 0
menu_text[0] = "Resume"
menu_text[1] = "Music Volume"
menu_text[2] = "Jump/Slice Mapping:"
menu_text[3] = "SFX Volume"
menu_text[4] = "Exit To Title Screen"
menu_text[5] = "Character: "
menu_text[6] = "Delete Save File:" + string(global.save)
	if global.vsync = true {
	menu_text[7] = "Vsync: ON"
	} else {
	menu_text[7] = "Vsync: OFF"
	}
menu_text[8] = "Costume: "

//global.jumpslicemap = 0
//global.musicvolume = 1

 cam_x = camera_get_view_x(view_camera[0])
 cam_y = camera_get_view_y(view_camera[0])
image_alpha = 0;
if !gamepad_is_connected(0) {
global.key_Z = keyboard_check(ord("Z"));
global.key_Z_pressed = keyboard_check_pressed(ord("Z"));
global.key_X = keyboard_check(ord("X"));
global.key_X_pressed = keyboard_check_pressed(ord("X"));
global.key_C = keyboard_check(ord("C"));
global.key_C_pressed = keyboard_check_pressed(ord("C"));
global.key_right = keyboard_check(vk_right);
global.key_up = keyboard_check(vk_up);
global.key_left = keyboard_check(vk_left);
global.key_down = keyboard_check(vk_down);
global.key_start = keyboard_check_pressed(vk_enter);

global.key_right_released = keyboard_check_released(vk_right);
global.key_left_released = keyboard_check_released(vk_left);

	} else {
global.key_Z = keyboard_check(ord("Z")) + gamepad_button_check(0,gp_face1);
global.key_Z_pressed = keyboard_check_pressed(ord("Z")) + gamepad_button_check_pressed(0,gp_face1);
global.key_X = keyboard_check(ord("X")) + gamepad_button_check(0,gp_face3);
global.key_X_pressed = keyboard_check_pressed(ord("X")) + gamepad_button_check_pressed(0,gp_face3);
global.key_C = keyboard_check(ord("C")) + gamepad_button_check(0,gp_face2);
global.key_C_pressed = keyboard_check_pressed(ord("C")) + gamepad_button_check_pressed(0,gp_face2);
global.key_right = keyboard_check(vk_right) + gamepad_button_check(0,gp_padr);
global.key_up = keyboard_check(vk_up) + gamepad_button_check(0,gp_padu);
global.key_left = keyboard_check(vk_left) + gamepad_button_check(0,gp_padl);
global.key_down = keyboard_check(vk_down) + gamepad_button_check(0,gp_padd);
global.key_start = keyboard_check_pressed(vk_enter)+ gamepad_button_check_pressed(0,gp_start);
		
global.key_right_released = keyboard_check_released(vk_right) + gamepad_button_check_released(0,gp_padr);
global.key_left_released = keyboard_check_released(vk_left) + gamepad_button_check_released(0,gp_padl);
		
	}
screenres = display_get_height()
window_size = 3
if screenres >= 720 {
	window_size = 3
}
if screenres > 900 {
	window_size = 4
	}


restarttimer = 0

var window_width = camera_get_view_width(view_camera[0]) * window_size
var window_height = camera_get_view_height(view_camera[0]) * window_size
window_set_size(window_width,window_height);
view_hport[0] = 240 * window_size;
view_wport[0] = 426 * window_size;
surface_resize(application_surface,view_wport[0],view_hport[0]);
window_set_position(64,64)

image_speed = 1

    _menux = camera_get_view_x(view_camera[0])+100
	_menuy = camera_get_view_y(view_camera[0])+120
	
	alarm[3] = 2;