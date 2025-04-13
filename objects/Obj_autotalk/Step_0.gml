/// @description Insert description here
// You can write your code in this editor
if !instance_exists(Obj_TrainBossController) {
if global.costume = "Miley (Fox)" and Spr = Spr_NPCMotuBillyText {
	Spr = Spr_NPCMotuBillyTextF	
} else if global.costume = "Billy (Fox)" {
	Spr = Spr_NPCMotuBillyText
}
}
if place_meeting(x,y,Obj_Billy) {
drawing = true	
} else drawing = false
if instance_exists(Obj_TrainBossController) x+= 3;