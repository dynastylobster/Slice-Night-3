/// @description Insert description here
// You can write your code in this editor

if global.character = "Robot" {
	base_koyote_time = 9
	doublejump = false;
		jumpspeed = 6.5
		max_runspeed = 2.1
	}
if global.character = "Human" {
	base_koyote_time = 9
	doublejump = false;
		jumpspeed = 6
		max_runspeed = 2.3 
	}
if global.character = "Coyote" {
	base_koyote_time = 45
	if !instance_exists(Obj_VoidTail) {
			instance_create_layer(x,y,layer,Obj_VoidTail)
		}
	doublejump = true;
		max_runspeed = 3.15
		jumpspeed = 5
		
	if !place_meeting(x,y+4,[Obj_MovePlatform,Obj_Wall,autoTileCol]) {
			if global.key_Z_pressed {
				if has_double_jumped = false {
						audio_play_sound(Snd_jump,0,0,global.SFXvolume*2,0,1.1)
						yspeed = -jumpspeed/1.08
					has_double_jumped = true
				}
			}
		}
		
	if grounded has_double_jumped = false
		
	}
	
if (abs(heat) >= maxHeat) { HitPlayer(); heat = 0; }
if (heat > 0) { heat--; }
if (heat < 0) { heat++; }


if !global.paused {
if grounded {deccell = deccell_ground} else deccell = deccell_air
age += 0.5
if age > 4096 age = 0

if i_frames > 0 i_frames --
//if (i_frames == 1) { heat = 0; }
if i_frames < 60 hit = false




//pit death
if y>room_height {
hp = 0
dead = true;
}
//slicing
if !spinning {
if !instance_exists(Obj_SliceDown) and !instance_exists(Obj_SliceSide) {

if global.key_X_pressed and GameObject.unpausetimer = 0 {
	if !global.key_down {
		if !grounded instance_create_layer(x,y,layer,Obj_SliceSide)
		if grounded instance_create_layer(x,y,layer,Obj_SliceSide)
		}else instance_create_layer(x,y,layer,Obj_SliceDown)

	}

}
}

if hp = 3 then max_hp = 3


// spin activate 
/*
if global.key_C and grounded{
	spinning = true;
} else if grounded spinning = false;

if spinning = true {
	accell = 0
	deccell = 0
	if grounded xspeed = facing * 3.5
} else {
accell = 0.25;
deccell = 0.25;
}
*/

if instance_exists(Obj_SliceSide) {
slicing_side = true	
} else slicing_side = false
if instance_exists(Obj_SliceDown) {
slicing_down = true	
} else slicing_down = false
//ground
if !grounded {
yspeed += grav
}
if !place_meeting(x,y-4,[Obj_Wall, autoTileCol]) 
{
y += yspeed	
}

if ( place_meeting(x,y+1.2, [Obj_Wall, autoTileCol]) or place_meeting(x,y+1.2,Obj_Slope) ) and yspeed >= 0 {
	var slopetooclose = (yspeed > 1);
	if !grounded and !dead audio_play_sound(Snd_land,0,0,slopetooclose*global.SFXvolume)
	grounded = true
} else if !place_meeting(x,y+2.5+abs(yspeed),Obj_MovePlatform) grounded = false

if place_meeting(x,y-5,[Obj_Wall, autoTileCol]) {
	y+= 1
	yspeed = max_fallspeed/4
	}

if grounded yspeed = 0
if place_meeting(x,y+1,Obj_MovePlatform) and yspeed > -1 {
	grounded = true	
}


while place_meeting(x,y,Obj_Slope) {
		y-= 0.125
	}
while place_meeting(x,y+4,Obj_Slope) {
		if !place_meeting(x,y,Obj_Slope) {
			y+= 0.125	
		} else break;
	}

if instance_place(x,y+5,Obj_Slope) {
		var slope = instance_place(x,y+5,Obj_Slope)
		if abs(xspeed) > 0.25 and abs(xspeed) < 2.5 and slope.sprite_index != Spr_SlopeAssist {
		if slope.image_xscale = 1 then xspeed += 0.25 //0.125
		if slope.image_xscale = 2 then xspeed += 0.125 //0.0625
		if slope.image_xscale = -1 then xspeed -= 0.25 // 0.125
		if slope.image_xscale = -2 then xspeed -= 0.125 //0.0625
		}
}

while place_meeting(x,y,Obj_SlopeAssist) {
		y-= 0.125
	}

if !place_meeting(x,y,Obj_WallJumpEffect) {
if !running {
	if global.key_right {
		if !dashing facing = 1
	if xspeed < max_walkspeed xspeed += accell} 
	
	if global.key_left {
		if !dashing facing = -1
	if xspeed > -max_walkspeed xspeed -= accell} 
	
	if global.key_left or global.key_right {
		walking = true
		} else walking = false
}

}
if abs(xspeed) > 0 {
	if !walking and xspeed>0 xspeed -= deccell
	if !walking and xspeed<0 xspeed += deccell
	}
	
/*
if !place_meeting(x+1.5*xspeed,y,[Obj_Wall, autoTileCol]) 
{
x+= xspeed
}*/

//
var feet = place_meeting(x + 1.5 * xspeed, y, [Obj_Wall, autoTileCol]);
var ankles = place_meeting(x + 1.5 * xspeed, y - 1, [Obj_Wall, autoTileCol]);
if (feet && !ankles) {
y += 1;
feet = false;
}
if (!feet) {
x += xspeed;
}
//

//jump queuing and koyote time
if !global.paused {

if ( (place_meeting(x,y+16,[Obj_Wall, autoTileCol])) or (place_meeting(x,y+16,Obj_Slope)) ) and !grounded and yspeed >= 0 {
if global.key_Z_pressed and GameObject.unpausetimer = 0 then about_to_jump = true	
}

if grounded and about_to_jump and !dead {
	if !audio_is_playing(Snd_jump) audio_play_sound(Snd_jump,0,0)
	yspeed = -jumpspeed
	about_to_jump = false
	has_double_jumped = true;
}

if grounded {koyote_time = base_koyote_time; has_double_jumped = false; }
//if (grounded && global.character == 2) {koyote_time = 90; canDoubleJump = true; }
if (!grounded && koyote_time > 0 && !canDoubleJump) then koyote_time-=1;
if (!grounded && koyote_time > 0 && canDoubleJump && has_double_jumped) { koyote_time--; }

if !grounded and koyote_time > 0 and global.key_Z_pressed and !dead and GameObject.unpausetimer = 0{
	if !audio_is_playing(Snd_jump) audio_play_sound(Snd_jump,0,0)
	has_double_jumped = true;
	yspeed = -jumpspeed
	about_to_jump = false
	
	/*if (!grounded && canDoubleJump && global.key_Z_pressed && !dead && GameObject.unpausetimer == 0) {
	if !audio_is_playing(Snd_jump) audio_play_sound(Snd_jump,0,0)
	yspeed = -jumpspeed
	about_to_jump = false*/
}

}
//running
if abs(xspeed) < accell {
xspeed = 0	
}


if running {
	if global.key_right {
		facing = 1
	if xspeed < max_runspeed xspeed += accell} 
	
	if global.key_left {
		facing = -1
	if xspeed > -max_runspeed xspeed -= accell} 
	
	if global.key_left or global.key_right {
		walking = true
		} else walking = false
}

//unused running feature
/*
if global.key_left_released {
	running_timer = 0
	running = false
	if xspeed < -1 running_timer = 20	
}
if global.key_right_released {
	running_timer = 0
	running = false
	if xspeed > 1 running_timer = 15	
}
if running and (global.key_left_released or global.key_right_released) {
if running_timer >= 0 running_timer = -15
running = false
}

if running_timer > 0 running_timer--
if running_timer < 0 running_timer++

if running_timer > 0 and grounded {
	if facing = 1 and xspeed > 1 and global.key_right {running = true}
	if facing = -1 and xspeed < -1 and global.key_left {running = true}
} */

	if !global.key_C running = false
if !instance_exists(Obj_WallJumpEffect){
	if global.key_C and grounded running = true
	} else {


if Obj_WallJumpEffect.x < x {
		global.key_left = false
	}	
	if Obj_WallJumpEffect.x > x {
		global.key_right = false
	}	
}

//walljump fix
if instance_exists(Obj_WallJumpEffect) {
		if Obj_WallJumpEffect.x < x {
		 if xspeed < 0	xspeed ++
		}	
			if Obj_WallJumpEffect.x > x {
		if xspeed > 0  xspeed --
		}	
	}
}

if grounded and global.key_Z_pressed and !dead and GameObject.unpausetimer = 0 {
if !audio_is_playing(Snd_jump) audio_play_sound(Snd_jump,0,0)
has_double_jumped = true;
yspeed = -jumpspeed
grounded = false
}
if !grounded and yspeed < 0{
if !global.key_Z {yspeed = yspeed/1.2}	
}


while place_meeting(x,y+0.125,[Obj_Wall, autoTileCol]) and grounded
	{
		if place_meeting(x,y-5,Obj_RegenSliceBlock) {x-=4}
	if !place_meeting(x,y,Obj_PushOuttaWall) {
	y-= 0.125	
	} else
	{
	y+=34	
	}
}


if place_meeting(x,y+4,Obj_MovePlatform) {
	while !place_meeting(x,y+1,Obj_MovePlatform) and grounded and yspeed >= 0{
		y+= 0.0125
		}
	}




//walljumping
if global.walljump and !place_meeting(x+8,y,Obj_NoWallJumpBlock) and !place_meeting(x-8,y,Obj_NoWallJumpBlock){
	if place_meeting(x+sign(xspeed)*6,y,[Obj_Wall, autoTileCol]) and !place_meeting(x,y+8,[Obj_Wall, autoTileCol]) {
		if instance_exists(Obj_WallJumpEffect) {
		if alarm[0] <= 0 or distance_to_object(Obj_WallJumpEffect) > 48 {
		if facing = -1 then sliding = global.key_left
		if facing = 1 then sliding = global.key_right
		}
		} else {
			sliding = true
			//if facing = -1 then sliding = global.key_left
			//if facing = 1 then sliding = global.key_right
			}
		if sliding sprite_index = Spr_BillyWallSlide
			
		if sliding {
			if facing = 1 {
			if global.key_left then sliding = false	
			}
			if facing = -1 {
			if global.key_right then sliding = false	
			}
			
			if global.key_Z_pressed and GameObject.unpausetimer = 0 {
				if !place_meeting(x,y,Obj_WallJumpEffect) and sprite_index = Spr_BillyWallSlide {
					alarm[0] = 35
					
					if place_meeting(x+10,y,[Obj_Wall, autoTileCol]) {
						facing = 1
					}
					if place_meeting(x-10,y,[Obj_Wall, autoTileCol]) {
						facing = -1
					}
					
					instance_create_layer(x+facing*10,y,layer,Obj_WallJumpEffect)
					}

					
				audio_play_sound(Snd_jump,0,0,2)
				audio_play_sound(Snd_land,0,0,0.8)
				yspeed = -(jumpspeed/1.25)
				sprite_index = Spr_BillyJump
				xspeed = -facing*walljump_multipler
				facing = sign(xspeed)
				deccell_air = 0.0125
				sliding = false
				
				has_double_jumped = false;
				}
			
			if yspeed > 1 then yspeed = 1
			}
		
		} else sliding = false
		
	} if grounded sliding = false
	if place_meeting(x,y+8,[Obj_Wall, autoTileCol]) sliding = false
	if grounded deccell_air = 0.25

					if instance_exists(Obj_WallJumpEffect) 
					{
						facing = sign(x - Obj_WallJumpEffect.x)
						//xspeed = (sign(instance_nearest(x,y,[Obj_Wall, autoTileCol]JumpEffect).x)-x)*abs(xspeed)
						}


//

if charge_timer > 92 then charge_timer--
	if dashes > 0 
	{
	if global.key_X then charge_timer++
	}
	
if global.dash {
	if charge_timer >45 and !place_meeting(x,y,Obj_BillyChargeEffect) {
	instance_create_layer(x,y,layer,Obj_BillyChargeEffect)	
	}

if dashing {
	dashingfor++
	grav = 0
	yspeed = 0
	if place_meeting(x,y+2,[Obj_Wall, autoTileCol]) {
	y-= 5	
	}
	sprite_index = Spr_BillyDash;
	xspeed = facing * 5.2;
	if dashingfor = 90 then dashing = false
	} else if !inwater grav = 0.225;
	

}

if !dashing dashingfor = 0;

if place_meeting(x,y,Obj_BillyChargeEffect) and !global.key_X{
	if charge_timer >= 90 {
	dashes -= 1
	dashing = true
	alarm[1] = 90
	with(Obj_BillyChargeEffect) {
		instance_destroy()
		}
	}
}
if global.key_X_pressed and dashing {
dashing = false
}

if !global.key_X then charge_timer = 0


//if dead dashing = false;

if place_meeting(x,y,Obj_BillyChargeEffect) {
	if !global.key_X and charge_timer >= 90 {
		sprite_index = Spr_BillyDash;
		dashing = true
		}
	}
if place_meeting(x+image_xscale*7,y,[Obj_Wall, autoTileCol]) {
dashing = false	
}

//sprite stuff
if !dead{
image_xscale = facing
if !hit {
if !slicing_side and !slicing_down and !slicing_orbit
	{
	
if walking and !running and !sliding and !dashing
{
	sprite_index = Spr_BillyWalk
} else if walking and running and !sliding {
sprite_index = Spr_BillyRun	
}
if grounded and !walking and !dashing {
sprite_index = Spr_BillyIdle	
}
if !grounded and !spinning and !sliding and !dashing{
	var slopetooclose = place_meeting(x,y+4,Obj_Slope)
	if !slopetooclose sprite_index = Spr_BillyJump
	if yspeed > 0 image_index = 1
	if yspeed < 0 image_index = 0
}	

} else {
if slicing_side sprite_index = Spr_BillySliceSide	
if slicing_down sprite_index = Spr_BillySliceDown
}
} else sprite_index = Spr_BillyHurt

} else sprite_index = Spr_BillyDie
if dead mask_index = Spr_Empty
if dead max_fallspeed = 1
if dead image_alpha -= 0.0125
if dead audio_stop_sound(Snd_BillyHurt)

if grounded and walking and !dead {
	if running { if image_index >=0 and image_index <= 0.6  {if !audio_is_playing(Snd_Step) then audio_play_sound(Snd_Step,0,0)} } 
	if !running { if image_index <=1 and image_index >= 0.5  {if !audio_is_playing(Snd_Step) then audio_play_sound(Snd_Step,0,0)} } 
}

if dead {
		if sprite_index = Spr_BillyDie {
				if global.character = "Human"
				{
					if global.costume = "Billy" || global.costume = "Billy (Fox)" {
						if !audio_is_playing(Snd_Die) {
							audio_play_sound(Snd_Die,0,0)
							}
					}
						if global.costume = "Miley" || global.costume = "Miley (Fox)" {
					if !audio_is_playing(Snd_DieF) {
							audio_play_sound(Snd_DieF,0,0)
							}
					}
				}
				if global.character = "Robot" 
				{
							if !audio_is_playing(Snd_Die) {
							audio_play_sound(Snd_Die,0,0)
							}
				}
				if global.character = "Coyote" 
				{
							if !audio_is_playing(Snd_DieV) {
							audio_play_sound(Snd_DieV,0,0)
							}
				}
		}
	}

if dead and image_index > 4 and image_index < 5 with(GameObject) {alarm[0] = 40}
if dead and image_index < 5 image_alpha = 1
if dead and image_index > 5 image_alpha = 0
if spinning and !hit and !dead {
	sprite_index = Spr_BillySpin;
	}
if spinning and grounded image_index = 0

//camera
if (global.cameraStyle) {
if !instance_exists(Obj_CameraController) {
if alarm[3] <= 0 {
cam_x = clamp(x-213,0,room_width-426)

if xspeed >= 5.5 and !instance_exists(Obj_ParryBallEffect){
	cam_x = lerp(cam_x	, clamp(x-213+(xspeed*20),0,room_width-426), 0.125)
} else 

{
cam_x = clamp(x-213,0,room_width-426)	
}
}


real_cam_y = clamp(y-120,0,room_height-240)
if grounded or (bouncing and y < cam_y+120) or (instance_exists(Obj_WallJumpEffect)) or (instance_exists(Obj_ParryBallEffect)) then cam_y = lerp(cam_y,real_cam_y,0.05)
if !grounded {
	if cam_y < y-120 {
		if sliding {if cam_y < real_cam_y-1 cam_y+=1} else {
			if cam_y < real_cam_y-2 cam_y+=2
		}
		}
	}

if instance_exists(Obj_Train) {
		if instance_nearest(x,y,Obj_Train).active {
			alarm[3] = 50
			cam_x = clamp(x-213,0,room_width-426) + instance_nearest(x,y,Obj_Train).xspeed*16
		} else {
				cam_x = lerp(cam_x,clamp(x-213,0,room_width-426),0.25)
			}
	}

camera_set_view_pos(view_camera[0],cam_x,cam_y);

}
//}
} else {
var camx = x - 213;
var camy = y - 120;
var oldCamx = camera_get_view_x(view_camera[0]);
var oldCamy = camera_get_view_y(view_camera[0]);
camx += ((camx + (xspeed * 10)) - oldCamx) / 20;
camy += ((camy + (yspeed * 10)) - oldCamy) / 20;
camx = clamp(camx, 0, room_width - 426);
camy = clamp(camy, 0, room_height - 240);
camera_set_view_pos(view_camera[0], camx, camy);
}

if place_meeting(x,y,Obj_WarpBox) {
image_alpha = 0	
}

//funny bugfix
if image_alpha = 0 {
audio_stop_sound(Snd_land)}

//funny bogfix 2
if place_meeting(x,y+0.25,Obj_MovePlatform) and yspeed >= 0 {
 grounded = true
	}

//foony boogfix 3
if place_meeting(x+2,y,Obj_PushOuttaWall) {
	x-= 3
	}
if place_meeting(x-2,y,Obj_PushOuttaWall) {
	x+= 3
	}
if running and dashing {
running = false;
}
if dashing and alarm[1] > 78 {
sprite_index = Spr_BillyRunDash;	
}

if dashes > 3 then dashes = 3 
if dashes < 0 then dashes = 0
if hp = 0 then dead = true

if place_meeting(x,y,Obj_BillyShip) then mask_index = Spr_BillyShipHitbox
if grounded = true then bouncing = false;

//WATER PHYSICS
if instance_exists(Obj_Water)	{
	
if place_meeting(x,y,Obj_Water) and !instance_exists(Obj_WallJumpEffect) {
		jumpspeed = 7
		grav = 0.18
		accel = 0.0525;
		if yspeed > 6 yspeed = 6
		if instance_place(x,y,Obj_Water) {
				if y < instance_place(x,y,Obj_Water).y {
				if !place_meeting(x,y,Obj_FishBubble) {
						instance_create_layer(x,instance_place(x,y,Obj_Water).y,layer,Obj_FishBubble);
					}
				}
			}
		
	} else {
		jumpspeed = 6
		accel = 0.25
		grav = 0.225
	}
	
}

if instance_exists(Obj_NuclearPaint) {

	if !global.paused {

if place_meeting(x,y+4,Obj_NuclearPaint) or place_meeting(x+4,y,Obj_NuclearPaint) or place_meeting(x-4,y,Obj_NuclearPaint) {
		if !audio_is_playing(Snd_NuclearPaint) {
				audio_play_sound(Snd_NuclearPaint,0,true,global.SFXvolume*4);
			}
	} else {
		audio_stop_sound(Snd_NuclearPaint);	
	}
} else audio_stop_sound(Snd_NuclearPaint)

}

if place_meeting(x+xspeed,y+0.5,[Obj_ShiftPillar,Obj_ShiftPillarBlack,Obj_ShiftPillarWhite,Obj_ShiftPillarOrange]) {
		if !sliding	y-=1
	}