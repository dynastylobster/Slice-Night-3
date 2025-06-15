/// @description Insert description here
// You can write your code in this editor
if done_slicing 
{	
	if damage = true alarm[0] = 2;
	damage = false
}

if damage = false mask_index = Spr_Empty
if damage mask_index = sprite_index

if !global.paused {
		if dir = 1 then x+=xspeed
		if dir = -1 then x-=xspeed
		y+= yspeed
		
		if sprite_index = Spr_FlameDice
		{
	if place_meeting(x + dir, y, [Obj_Wall,Obj_EnemyOnlyBlock, autoTileCol]) 
	{
		x -= dir * 5;
		dir *= -1;
	}
	if place_meeting(x, y + yspeed, [Obj_Wall,Obj_EnemyOnlyBlock, autoTileCol]) 
	{
		y += yspeed;
		yspeed *= -1;
	}
		
		
}
	} else {
	alarm[0]++
	alarm[1]++
}

if !instance_exists(Obj_Billy) {
		instance_create_layer(x,y,layer,Obj_EnemyHurtEffect);
		instance_destroy();
	}
	
if !global.paused and sprite_index = Spr_FlameDice {
		yspeed += grav
		if place_meeting(x,y+yspeed,[Obj_Wall,Obj_Slope,autoTileCol]) {
			yspeed = -yspeed	
		}
	}