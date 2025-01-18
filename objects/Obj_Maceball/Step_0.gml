/// @description Insert description here
// You can write your code in this editor

if !global.paused {
	
	age++

if !place_meeting(x,y+yspeed+1,[Obj_Wall, autoTileCol]) {
		yspeed += grav
		if yspeed > max_fallspeed yspeed = max_fallspeed
	}

if place_meeting(x,y+yspeed+1,[Obj_Wall, autoTileCol]) {
		if yspeed> 1.5 {
				audio_play_sound(Snd_land,0,0,global.SFXvolume*3,0,0.75)
				audio_play_sound(Snd_land,0,0,global.SFXvolume*2,0,0.8)
				instance_create_layer(x,y+8,layer,Obj_SliceBlockParticle)
				instance_create_layer(x,y+8,layer,Obj_SliceBlockParticle)
				instance_create_layer(x,y+8,layer,Obj_SliceBlockParticle)
				instance_create_layer(x,y+8,layer,Obj_SliceBlockParticle)
				with(Obj_SliceBlockParticle) {if yspeed < -3 yspeed = -3}
			}
		yspeed *= -0.80
	}


if place_meeting(x+xspeed,y,[Obj_Wall, autoTileCol]) {
	xspeed = xspeed*-0.5
}
x+= xspeed
y += yspeed

}

if sliced image_index = 2
if !sliced image_index = 0

if abs(xspeed) < 2 and yspeed > 0 {
	sliced = false	
}