/// @description Insert description here
// You can write your code in this editor
cam_x = camera_get_view_x(view_camera[0])
cam_y = camera_get_view_y(view_camera[0])
active = true;
alarm[0] = 300
audio_play_sound(Snd_GhostChomp,0,0,global.SFXvolume*2,0,0.8)
with(Obj_Billy) {
instance_destroy();	
}