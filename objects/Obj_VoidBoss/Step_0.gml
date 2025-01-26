if instance_exists(Obj_Billy) {
		if Obj_Billy.x < x then image_xscale = -1 else image_xscale = 1;
	}
if (audio_is_playing(Snd_TitleMusic)) {
audio_pause_sound(Snd_TitleMusic);
}

//y = camera_get_view_y(view_camera[0]) + 75;

/*
Phase 1: Tears.
Phase 2: Knives.
Phase 3: Tears and knives.
Phase 4: Laser.
*/
if !global.paused {

var newph = false;
if (lastPhase != currentPhase) {
lastPhase = currentPhase;
attackTimer = 0;
counter = 0;
newph = true;
if (currentPhase == 2) { lightningCounter = 24; }
}

if currentPhase >= 4 {
		if instance_exists(Obj_VoidBullet) {
			Obj_VoidBullet.sprite_index = Spr_VoidBullet2
		}
	}

if (currentPhase == 1 || currentPhase == 3 || currentPhase == 5) {
if (attackTimer % 30 == 0 && !(lookphase == 2 && currentPhase == 3)) {
instance_create_depth(x,y,depth,Obj_VoidBullet, {homing : true} )
if (irandom_range(0, 4) == 0) { 
		instance_create_depth(x,y,depth,Obj_VoidBullet)
	}
if (irandom_range(0, 18) == 0) { 
		instance_create_depth(x,y,depth,Obj_VoidBullet)
	}
}
}

if (currentPhase == 3 || currentPhase == 5) {
if (attackTimer % 75 == 0) {
// spawn knife attack

}
}

if (currentPhase == 5) {
if (attackTimer % 120 == 0) {
lasering = !lasering;
// set hand desired location
}
}

if (lasering) {
// move hands to desired location
// draw laser and damage touching
}

if (!cameraMoving) {
	switch(currentPhase) {
	case 1:
	if (newph) {
	global.music = Snd_VoidBossMusic;
	audio_play_sound(Snd_VoidBossMusic, 0, true, global.musicvolume);
	}
	counter++;
	if (counter >= 600) {
		if (instance_exists(Obj_FlashButton)) {
		instance_nearest(193, 432, Obj_FlashButton).active = true;
	}
	counter = 0;
	}
	break;
	case 2:
	if (newph) {
	if (instance_exists(Obj_Wall)) {
	instance_destroy(Obj_Wall);
	}
	layer_set_visible("Dont_Mess_With", false);
	}
	counter++;
	if (counter >= 30) {
	lookphase++;
	counter = 0;
	}
	break;
	case 3:
	counter++;
	if (counter >= 60 && lookphase != 3) {
	lookphase++;
	counter = 0;
	}
	if (lookphase > 3) { lookphase = 3; }
	if (counter >= 600) {
		if (instance_exists(Obj_FlashButton)) {
		instance_nearest(193, 48, Obj_FlashButton).active = true;
	}
		counter = 0;
	}
	break;
	case 4: 
	if (newph) {
	image_index = 1;
	}
	break;
	case 5:
	counter++;
	if (counter >= 30 && lookphase > 0) {
		lookphase--;
		counter = 0;
	}
	if (counter >= 900) {
		if (instance_exists(Obj_FlashButton)) {
		instance_nearest(193, 320, Obj_FlashButton).active = true;
	}
		counter = 0;
	}
	break;
	}
}


cameraMoving = false;
var xmoving = false;
var ymoving = false;
if (locPoints[lookphase][0] != camera_get_view_x(view_camera[0]) + 120) { xmoving = true; camera_set_view_pos(view_camera[0],  camera_get_view_x(view_camera[0]) + (locPoints[lookphase][0] > camera_get_view_x(view_camera[0]) + 120 ? 1 : -1), camera_get_view_y(view_camera[0])); }
if (locPoints[lookphase][1] != camera_get_view_y(view_camera[0]) + 213) { ymoving = true; camera_set_view_pos(view_camera[0],  camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]) + (locPoints[lookphase][1] > camera_get_view_y(view_camera[0]) + 213 ? 1 : -1)); }

if (camera_get_view_x(view_camera[0]) <= 0) { xmoving = false; camera_set_view_pos(view_camera[0], 0, camera_get_view_y(view_camera[0])); } else if (camera_get_view_x(view_camera[0]) >= room_width - 426) { xmoving = false; camera_set_view_pos(view_camera[0], room_width - 426, camera_get_view_y(view_camera[0])); }
if (camera_get_view_y(view_camera[0]) <= 0) { ymoving = false; camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), 0); } else if (camera_get_view_y(view_camera[0]) >= room_height - 240) { ymoving = false; camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), room_height - 240); }

if (xmoving || ymoving) { cameraMoving = true; }

if (currentPhase < 6) {
var mspd = floor(1 + (currentPhase / 2));
if ((x < targX + mspd && x > targX - mspd) && (y < targY + mspd && y > targY - mspd)) {
targX = camera_get_view_x(view_camera[0]) + 213 + random_range(-173, 173);
targY = camera_get_view_y(view_camera[0]) + 120 + random_range(-80, 80);
}
if (x > targX + 1 || x < targX - 1) { 
	x -= ((x - targX) * (0.04 * mspd));
}
if (y > targY + 1 || y < targY - 1) {
	y -= ((y - targY) * (0.04 * mspd));
}
}
if (currentPhase == 6) {
targX = camera_get_view_x(view_camera[0]) + 213;
targY = camera_get_view_y(view_camera[0]) + 50;
if (x > targX + 1 || x < targX - 1) { 
	x -= ((x - targX) * (0.04));
}
if (y > targY + 1 || y < targY - 1) {
	y -= ((y - targY) * (0.04));
}

var wambis = inst_26BCC6FC;
if (instance_exists(wambis)) {
if (wambis.x < 32) {
wambis.x += 0.5;
}
}
}

if (currentPhase == 7) {
y += 4;
var void = inst_CE46B08;
if (instance_exists(void)) {
if (void.y > 448) {
void.y--;
}
}
}

attackTimer++;
}