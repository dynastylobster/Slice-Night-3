/// @description Insert description here
// You can write your code in this editor
if !global.paused {
if (forward) {
    //x = lerp(x, destination_x, platform_speed/8);
    //y = lerp(y, destination_y, platform_speed/8);
	if x < destination_x then x+=platform_speed
	if x > destination_x then x-=platform_speed
	if y < destination_y then y+=platform_speed
	if y > destination_y then y-=platform_speed



    if (point_distance(x, y, destination_x, destination_y) < 1) {
        forward = false;
    }
}
else {
  //  x = lerp(x, start_x, platform_speed/8);
  //  y = lerp(y, start_y, platform_speed/8);
  	if x < start_x then x+=platform_speed
	if x > start_x then x-=platform_speed
	if y < start_y then y+=platform_speed
	if y > start_y then y-=platform_speed

    if (point_distance(x, y, start_x, start_y) < 1) {
        forward = true;
    }
} 
/*
if place_meeting(x,y-4,Obj_Billy) {
	Obj_Billy.x += x-xprevious
	Obj_Billy.y += y-yprevious
	}
if place_meeting(x,y+4,Obj_Billy) {
	Obj_Billy.y += 2
	}
*/

}
/* if forward {
	if destination_x > x 
	{ x+= platform_speed}
	else
	{x-= platform_speed}
	if destination_y > x 
	{ y+= platform_speed}
	else
	{y-= platform_speed}
	
	if point_distance(x,y,destination_x,destination_y) < 3 {
		forward = false
		}
	
	}

if !forward {
	if start_x > x 
	{ x+= platform_speed}
	else
	{x-= platform_speed}
	if start_y > y 
	{ y+= platform_speed}
	else
	{y-= platform_speed}
	
	if point_distance(x,y,start_x,start_y) < 3 {
		forward = false
		}
	
	}
	