/// @description Insert description here
// You can write your code in this editor
CheckOnscreen();
if instance_exists(Obj_Billy) {
if !global.paused {
	if !place_meeting(x+4,y,Obj_CannonTrackerWall) {
	if Obj_Billy.x > x then x+= 2
	}
	
	
		if !place_meeting(x-4,y,Obj_CannonTrackerWall) {
		if Obj_Billy.x < x then x-= 2
		}
	
	}
}

if image_index >= 3 and !place_meeting(x,y+90,Obj_CannonTrackerBall) and cooldown = 0 {
if onscreen audio_play_sound(Snd_CannonShoot,0,0,global.SFXvolume*2);
instance_create_layer(x,y,layer,Obj_CannonTrackerBall)
if Parryable {
instance_create_depth(x,y,depth-50,Obj_CannonTrackerBallParryStar);	
}
cooldown = 30;
}

image_speed = !global.paused*(_speed);

if !global.paused {
if cooldown > 0 then cooldown--	
}