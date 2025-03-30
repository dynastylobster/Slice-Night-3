/// @description Insert description here
// You can write your code in this editor

if (abs(heat) > 10) {
var heatPercent = (heat / maxHeat);
var color = make_color_rgb(floor(heatPercent * 255), 0, 0);
if (age % (1 + floor(abs(heatPercent) * 3)) != 2) {
draw_line_width_color(x -1, y - 26, x -1, y - (32 + (8 * heatPercent)), 2, color, color);
draw_sprite(Spr_Thermometer, 0, x, y - 32);
}
}


if global.music = Snd_FinalBoss or room = Level_BossFinal { 
	global.motu = false;
	global.fem = false;
	
		if sprite_index = Spr_BillySliceSide 
		{
			global.billyfox = false
			sprite_index = Spr_BillySliceSideSwo;
			} 
		else {
		global.billyfox = true	
		}
	}


if global.music = Snd_FinalBoss or room = Level_BossFinal {
	
	var blackholeleft = false
	var blackholeright = false
	
	if x < 77 then blackholeleft = true
	if x > 250 then blackholeright = true
	
	if grounded or place_meeting(x,y+6,[Obj_Wall, autoTileCol]){
		if !blackholeleft and !blackholeright 	draw_sprite(Spr_BillyShadow,0,x,y+(floor(image_index)));	
		if blackholeleft draw_sprite(Spr_BillyShadow,1,x,y+(floor(image_index)));	
		if blackholeright draw_sprite(Spr_BillyShadow,2,x,y+(floor(image_index)));	
		
	}
		if sprite_index = Spr_BillyRun {
			draw_sprite_ext(Spr_BillyRunSwo,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,1);	
		}
		
		
	}

if global.costume != "Motu" {
	
if (global.costume == "Billy (Fox)" || global.costume == "Miley (Fox)") and !dead and !sliding and !slicing_side and !slicing_down{
	
if grounded and !running {
if walking draw_sprite_ext(Spr_BillyFoxUnder,image_index,x,y,image_xscale,image_yscale,0,c_white,image_alpha);	
if !walking draw_sprite_ext(Spr_BillyFoxUnder,image_index,x,y+1,image_xscale,image_yscale,0,c_white,image_alpha);	
}



if running and grounded {
 draw_sprite_ext(Spr_BillyFoxRunUnder,image_index,x,y,image_xscale,image_yscale,0,c_white,image_alpha);	
}

if !grounded {
	if yspeed >= 0 draw_sprite_ext(Spr_BillyFoxUnder,image_index,x,y-1,image_xscale,image_yscale,0,c_white,image_alpha);	
	if yspeed < 0 draw_sprite_ext(Spr_BillyFoxUnder,image_index,x,y-1,image_xscale,image_yscale,0,c_white,image_alpha);	
}

}

if (global.costume == "Billy (Fox)" || global.costume == "Miley (Fox)") and slicing_down {
	draw_sprite_ext(Spr_BillyFoxUnder,image_index,x,y-2,image_xscale,image_yscale,0,c_white,image_alpha);	
}


if (global.costume == "Billy (Fox)" || global.costume == "Miley (Fox)") and slicing_side {
	draw_sprite_ext(Spr_BillyFoxUnder,image_index,x+facing,y,image_xscale,image_yscale,0,c_white,image_alpha);	
}

if (global.costume == "Billy (Fox)" || global.costume == "Miley (Fox)") and sliding and !slicing_side and !slicing_down {
	draw_sprite_ext(Spr_BillyFoxSlideUnder,image_index,x,y,image_xscale,image_yscale,0,c_white,image_alpha);	
}

}
//girl billy
if (global.costume == "Miley" or global.costume = "Miley (Fox)")
{
if sprite_index = Spr_BillyDie then sprite_index = Spr_BillyDieF
if sprite_index = Spr_BillyWalk then sprite_index = Spr_BillyWalkF
if sprite_index = Spr_BillyRun then sprite_index = Spr_BillyRunF
if sprite_index = Spr_BillyDash then sprite_index = Spr_BillyRunDashF
if sprite_index = Spr_BillyRunDash then sprite_index = Spr_BillyRunDashF

if sprite_index = Spr_BillySliceSide then sprite_index = Spr_BillySliceSideF
if sprite_index = Spr_BillySliceDown then sprite_index = Spr_BillySliceDownF

if sprite_index = Spr_BillyHurt then sprite_index = Spr_BillyHurtF
if sprite_index = Spr_BillyIdle then sprite_index = Spr_BillyIdleF
if sprite_index = Spr_BillyJump then sprite_index = Spr_BillyJumpF
if sprite_index = Spr_BillyWallSlide then sprite_index = Spr_BillyWallSlideF
}

// playable motu
if (global.costume == "Motu") {
	
if sprite_index = Spr_BillyDie then sprite_index = Spr_PMotuDie
if sprite_index = Spr_BillyWalk {image_speed = 0.8} else image_speed = 1
if sprite_index = Spr_BillyWalk or sprite_index = Spr_BillyRun then sprite_index = Spr_PMotuRun
if sprite_index = Spr_BillyDash or sprite_index = Spr_BillyRunDash then sprite_index = Spr_PMotuRunDash

if sprite_index = Spr_BillySliceSide {
		if instance_exists(Obj_SliceSide) 
			{
			if Obj_SliceSide.image_index <= 1.5 {sprite_index = Spr_PMotuSlicePrepare} else sprite_index = Spr_PMotuSliceSide
			if Obj_SliceSide.image_index > 2.5 image_index = 1
		} else {sprite_index = Spr_PMotuSliceSide; image_index = 0}
	}
if sprite_index = Spr_BillySliceDown {
		if instance_exists(Obj_SliceDown) 
			{
			if Obj_SliceDown.image_index <= 1.5 {sprite_index = Spr_PMotuSlicePrepare} else sprite_index = Spr_PMotuSliceDown
			if Obj_SliceDown.image_index > 2.5 image_index = 1
		} else {sprite_index = Spr_PMotuSliceDown; image_index = 0}
	}

if sprite_index = Spr_BillyHurt then sprite_index = Spr_PMotuHurt
if sprite_index = Spr_BillyIdle then sprite_index = Spr_PMotuIdle
if sprite_index = Spr_BillyJump then sprite_index = Spr_PMotuJump
if sprite_index = Spr_BillyWallSlide then sprite_index = Spr_PMotuWallSlide

}

if global.costume = "Void" {
		if sprite_index = Spr_BillyDie then sprite_index = Spr_VoidDie
		if sprite_index = Spr_BillyWalk sprite_index = Spr_VoidWalk
	if sprite_index = Spr_BillyRun then sprite_index = Spr_VoidRun
	if sprite_index = Spr_BillyIdle sprite_index = Spr_VoidIdle
	if sprite_index = Spr_BillyJump sprite_index = Spr_VoidJump
	if sprite_index = Spr_BillyWallSlide sprite_index = Spr_VoidWallSlide
	if sprite_index = Spr_BillyHurt sprite_index = Spr_VoidHurt
	if sprite_index = Spr_BillySliceDown sprite_index = Spr_VoidSliceDown
	if sprite_index = Spr_BillySliceSide sprite_index = Spr_VoidSliceSide
	}
if global.costume = "Void (Clown)" {
		if sprite_index = Spr_BillyDie then sprite_index = Spr_VoidDieC
		if sprite_index = Spr_BillyWalk sprite_index = Spr_VoidWalkC
	if sprite_index = Spr_BillyRun then sprite_index = Spr_VoidRunC
	if sprite_index = Spr_BillyIdle sprite_index = Spr_VoidIdleC
	if sprite_index = Spr_BillyJump sprite_index = Spr_VoidJumpC
	if sprite_index = Spr_BillyWallSlide sprite_index = Spr_VoidWallSlideC
	if sprite_index = Spr_BillyHurt sprite_index = Spr_VoidHurtC
	if sprite_index = Spr_BillySliceDown sprite_index = Spr_VoidSliceDownC
	if sprite_index = Spr_BillySliceSide sprite_index = Spr_VoidSliceSideC
	}
if global.costume = "Void" or global.costume = "Void (Clown)" {
	if sprite_index = Spr_BillyDash or sprite_index = Spr_BillyRunDash then sprite_index = Spr_VoidDash	
}

if global.costume = "Billy (SMW)" 
	{
	if sprite_index = Spr_BillyDie then sprite_index = Spr_BillyDieSMW
if sprite_index = Spr_BillyWalk then sprite_index = Spr_BillyWalkSMW
if sprite_index = Spr_BillyRun then sprite_index = Spr_BillyRunSMW

if sprite_index = Spr_BillySliceSide then sprite_index = Spr_BillySliceSideSMW
if sprite_index = Spr_BillySliceDown then sprite_index = Spr_BillySliceDownSMW

if sprite_index = Spr_BillyHurt then sprite_index = Spr_BillyHurtSMW
if sprite_index = Spr_BillyIdle then sprite_index = Spr_BillyIdleSMW
if sprite_index = Spr_BillyJump then sprite_index = Spr_BillyJumpSMW
if sprite_index = Spr_BillyWallSlide then sprite_index = Spr_BillyWallSlideSMW
}


draw_self();


if global.costume != "Motu" {
if (global.costume == "Billy (Fox)" || global.costume == "Miley (Fox)") and !dead and !sliding and !slicing_side and !slicing_down{
	if grounded and !running {
if walking draw_sprite_ext(Spr_BillyFoxOver,image_index,x,y,image_xscale,image_yscale,0,c_white,image_alpha);	
if !walking draw_sprite_ext(Spr_BillyFoxOver,image_index,x,y+1,image_xscale,image_yscale,0,c_white,image_alpha);	
}

if running and grounded {
 draw_sprite_ext(Spr_BillyFoxRunOver,image_index,x,y,image_xscale,image_yscale,0,c_white,image_alpha);	
}


if !grounded {
	if yspeed >= 0 draw_sprite_ext(Spr_BillyFoxOver,image_index,x,y-1,image_xscale,image_yscale,0,c_white,image_alpha);	
	if yspeed < 0 draw_sprite_ext(Spr_BillyFoxOver,image_index,x,y-2,image_xscale,image_yscale,0,c_white,image_alpha);	
}

} 

if (global.costume == "Billy (Fox)" || global.costume == "Miley (Fox)") and sliding and !slicing_side and !slicing_down {
	draw_sprite_ext(Spr_BillyFoxSlideOver,image_index,x,y,image_xscale,image_yscale,0,c_white,image_alpha);	
}

if (global.costume == "Billy (Fox)" || global.costume == "Miley (Fox)") and slicing_down {
	draw_sprite_ext(Spr_BillyFoxOver,image_index,x,y-2,image_xscale,image_yscale,0,c_white,image_alpha);	
}

if (global.costume == "Billy (Fox)" || global.costume == "Miley (Fox)") and slicing_side and room != Level_BossFinal {
	draw_sprite_ext(Spr_BillyFoxOver,image_index,x+facing,y-1,image_xscale,image_yscale,0,c_white,image_alpha);	
}

}


if global.music = Snd_FinalBoss or room = Level_BossFinal {
		if sprite_index = Spr_BillyRun {
			draw_sprite_ext(Spr_BillyRunSwoTop,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,1);	
		}
		
		if sprite_index = Spr_BillyIdle {
			draw_sprite_ext(Spr_BillyIdleSwo,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,1);	
		}
		
		if sprite_index = Spr_BillyJump {
			draw_sprite_ext(Spr_BillyJumpSwo,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,1);	
		}
		
		if sprite_index = Spr_BillyWalk {
			draw_sprite_ext(Spr_BillyWalkSwo,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,1);	
		}
		if sprite_index = Spr_BillyWallSlide {
			draw_sprite_ext(Spr_BillyWallSlideSwo,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,1);	
		}
	}

if !dead {
if i_frames > 0 and !hit {
if floor(age)%2 = 0 {
	image_alpha = 0
	} else image_alpha = 1
} else image_alpha = 1
}
if charge_timer >= 90 and place_meeting(x,y,Obj_BillyChargeEffect) {
draw_sprite(Spr_BillyCharge,Obj_BillyChargeEffect.image_index+1.5,x,y);
draw_sprite(Spr_WalljumpEffectSprite,Obj_BillyChargeEffect.image_index+1.5,x,y)
}