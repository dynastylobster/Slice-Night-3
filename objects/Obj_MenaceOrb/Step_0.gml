/// @description Insert description here
// You can write your code in this editor
event_inherited()
CheckOnscreen()
if !global.paused {
	if (belongsToWhizyard) {
		if (whizyardDeathTimer >= 120) {
			hp = -2;
		}
	whizyardDeathTimer++;
	}
yspeed += grav
if place_meeting(x,y+1*sign(grav), [Obj_Wall, Obj_EnemyOnlyBlock, autoTileCol]) {
	if onscreen {
	if yspeed > 0 audio_play_sound(Snd_Land,0,0,global.SFXvolume,0,1.2);
}
yspeed = -jumpspeed *sign(grav)
}

y += yspeed
}

if room = Level_BossFinal {
	if sprite_index != Spr_MenaceOrbEpic and sprite_index != Spr_MenaceOrbShiny {
		sprite_index = Spr_MenaceOrb_Final
	}
	}
	
if yspeed < -1.5 image_index = 1

