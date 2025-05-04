/// @description Insert description here
// You can write your code in this editor

if active {
age += 0.125
if age > 256 age = 0

y = starty+sin(age)*2
}

if room = Level_BossFinal {
		if instance_exists(Obj_Dad) {
			if Obj_Dad.defeat = true {
				if starty < room_height/2 {
					starty++	
				}
			}
		}
	}