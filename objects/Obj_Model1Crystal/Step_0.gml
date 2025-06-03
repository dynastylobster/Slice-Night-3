/// @description Insert description here
// You can write your code in this editor
age+= 0.125;



if distance_to_object(Obj_EscapePod) < 100 {
		drawy1 = lerp(drawy1,Obj_EscapePod.y,0.0225)
		drawy2 = lerp(drawy2,Obj_EscapePod.y,0.0225)
	} else {
	drawy1 = y+ ( (sin(age/4)*48)) 
drawy2 = y- ( (sin(age/4)*48)) 	
		
	}
if abs(xspeed) < 2
{
xspeed -= 0.0125
}
x += xspeed

camera_set_view_pos(view_camera[0],(clamp(x-213,0,room_width-426)),0)