/// @description Insert description here
// You can write your code in this editor
event_inherited()
if !global.paused {
	if (belongsToWhizyard) {
		if (whizyardDeathTimer >= 120) {
			hp = -2;
		}
	whizyardDeathTimer++;
	}
yspeed += grav
if place_meeting(x,y+1*sign(grav), [Obj_Wall, Obj_EnemyOnlyBlock, autoTileCol]) {
yspeed = -jumpspeed *sign(grav)
}

y += yspeed
}

if room = Level_BossFinal {
	if sprite_index != Spr_MenaceOrbEpic and sprite_index != Spr_MenaceOrbShiny {
		sprite_index = Spr_MenaceOrb_Final
	}
	}