/// @description Insert description here
// You can write your code in this editor
if !global.paused and speed = 0 {
		yspeed += grav
		x += xspeed
		y += yspeed
	}
if y > room_height-32 or place_meeting(x,y,[BossParentObject,Obj_EvilTrainFace]) {
	event_user(0);
}
if speed = 8 {
	direction = point_direction(x,y,Obj_Model1Train.x,Obj_Model1Train.y)
	speed = 8 * !global.paused;	
	if place_meeting(x,y,Obj_Model1Train) {
		instance_destroy();	
	}
}