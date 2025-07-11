// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function HitAnyone() {
if (!array_contains(other.instancesHit, id)) {

var dam = other.damageType;
var damage = other.damageBase;
var jesterRand = 0;

if (instance_exists(Obj_Billy)) {
	if (other.owner == Obj_Billy) {
		// check [Pendant Bosses] for how many there are
		// add that value * 0.25 to "damage"
		
		
		
		if (global.character == "Robot") {
			damage *= 1.6;
		}
		if (global.character == "Coyote") {
			if (dam == "Normal") { damage *= 0.75; }
			if (dam == "Down") { damage *= 0.75; }
			if (dam == "Flame") { damage *= 2; }
		}
		
			if (dam == "Flame") {
	damage += (0.25 * global.firelevel);
	}
		
		if (global.character == "Jester") {
			if (dam == "Normal") { damage *= 0.5; }
			if (dam == "Flame") { jesterRand = irandom_range(1, 6); damage = jesterRand; }
		}
	}


	
}

if (array_contains(resistances, "Immune To " + dam)) {
	damage *= 0;
}
if (array_contains(resistances, "Resists " + dam)) {
	damage /= 2;
}
if (array_contains(resistances, "Weak To " + dam)) {
	damage *= 2;
}

if (damage > 0) { instance_create_depth(x,y,depth,Obj_EnemyHurtEffect); }
if (jesterRand > 0) {
	//draw_text(x, y, damage + "!");
	var indicator = instance_create_depth(x,y,depth,Obj_DiceDMG)
	indicator.image_index = jesterRand;
	}

	if instance_exists(Obj_Billy) {
		///extra damage for side slice if youre going fast
if dam = "Normal"{
			if abs(Obj_Billy.xspeed) >= 3.75 {
				
				Obj_Billy.i_frames = 60;
				if damage > 0 damage = 2;	
				
					if object_index = Obj_SheildShooter or object_index = Obj_SheildShooterGrav or object_index = Obj_SheildShooterBounce {
							instance_create_depth(x+(image_xscale*14),y,depth-50,Obj_BrokenSheild)
							instance_create_depth(x,y,depth,Obj_SheildShooterBroken)
							alarm[5] = 5;	
					}
				
				
				repeat(3) {
				instance_create_depth(x,y,depth,Obj_FlameSparkBlueifyer)
				instance_create_depth(x+irandom_range(-8,8),y+irandom_range(-8,8),depth,Obj_GoalBoxSparkle)
				}
				audio_play_sound(Snd_EnemyHit,0,0,global.SFXvolume,0,0.75);
				audio_play_sound(Snd_GhostChomp,0,0,global.SFXvolume*0.5,0,1.2)
				
				
				if collision_line(x,y,x-(sign(Obj_Billy.xspeed)*(sprite_width/2+10)),y,Obj_Billy,45,false) or collision_line(x,y-8,x-(sign(Obj_Billy.xspeed)*(sprite_width/2+10)),y-8,Obj_Billy,45,false) and !place_meeting(x,y+8,Obj_Billy) or collision_line(x,y+8,x-(sign(Obj_Billy.xspeed)*(sprite_width/2+10)),y,Obj_Billy,45,false) {
					damage = 3.5;
					//audio_play_sound(Snd_ParryStar,0,0,global.SFXvolume*2,0,1.1);
					audio_play_sound(Snd_SuperCrit,0,0,global.SFXvolume*2,0,1);
					instance_create_depth(Obj_Billy.x,Obj_Billy.y,depth,Obj_SMWHeart);
					with(instance_create_depth(x,y,depth-10,Obj_SuperCritSparkle)) {direction = 0}
					with(instance_create_depth(x,y,depth-10,Obj_SuperCritSparkle)) {direction = 30}
					with(instance_create_depth(x,y,depth-10,Obj_SuperCritSparkle)) {direction = 60}
					with(instance_create_depth(x,y,depth-10,Obj_SuperCritSparkle)) {direction = 90}
					with(instance_create_depth(x,y,depth-10,Obj_SuperCritSparkle)) {direction = 120}
					with(instance_create_depth(x,y,depth-10,Obj_SuperCritSparkle)) {direction = 150}
					with(instance_create_depth(x,y,depth-10,Obj_SuperCritSparkle)) {direction = 180}
					with(instance_create_depth(x,y,depth-10,Obj_SuperCritSparkle)) {direction = 210}
					with(instance_create_depth(x,y,depth-10,Obj_SuperCritSparkle)) {direction = 240}
					with(instance_create_depth(x,y,depth-10,Obj_SuperCritSparkle)) {direction = 270}
					with(instance_create_depth(x,y,depth-10,Obj_SuperCritSparkle)) {direction = 300}
					with(instance_create_depth(x,y,depth-10,Obj_SuperCritSparkle)) {direction = 330}

					instance_create_depth(x,y,depth-10,Obj_ParryBallEffect)
					instance_create_depth(x,y,depth,Obj_FlameSliceCollide)
					
					
				}
				
				
				
			}
		}
		///triple damage for downslice if your falling and have perfect timing (ignores resistence)
			if dam = "Down" {
					if Obj_Billy.yspeed >= 1 {
						if distance_to_object(Obj_Billy) < 8 and distance_to_object(Obj_Billy) > 1 {
							instance_create_depth(x,y,depth,Obj_FlameSparkBlueifyer)
							damage = 3;
							Obj_Billy.i_frames = 60;
						}
					}
				}
			
		
	}
	


self.hp -= damage;
if damage > 0 {
audio_stop_sound(Snd_EnemyHit);
audio_play_sound(Snd_EnemyHit,0,0,global.SFXvolume)	
}
array_push(other.instancesHit, id);
}
if instance_exists(Obj_SliceDown) {
		Obj_SliceDown.done_slicing = true
	}
}