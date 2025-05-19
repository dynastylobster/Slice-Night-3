/// @description Insert description here
// You can write your code in this editor
age += 0.125
if instance_exists(Obj_ScorchGiant) {
		x = Obj_ScorchGiant.x + sin(age/3) * 12
		y = Obj_ScorchGiant.y
		if x < Obj_ScorchGiant.x-10 depth = Obj_ScorchGiant.depth-5
		if x > Obj_ScorchGiant.x+10 depth = Obj_ScorchGiant.depth+5
	}