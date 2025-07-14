/// @description Insert description here
// You can write your code in this editor
age += 0.0125
image_index += 0.0125
if age = 1 age = 0

	switch (image_xscale) {
	case -1: {
	if image_index >= 0.5 and image_index < 0.6  and !place_meeting(x,y,Obj_GlassStar) {with(instance_create_depth(x+18*image_xscale,y+18,depth-10,Obj_GlassStar)){falling = true}; with(instance_create_depth(x+18*image_xscale,y+18,depth,Obj_EnemyDieCircle)){color = #3322FF}}
	if image_index >= 3.5 and image_index < 3.6  and !place_meeting(x,y,Obj_GlassStar) {with(instance_create_depth(x+18*image_xscale,y+18,depth-10,Obj_GlassStar)){falling = true}; with(instance_create_depth(x+18*image_xscale,y+18,depth,Obj_EnemyDieCircle)){color = #3322FF}}
	break;
	
	}
	case 1: {
	if image_index >= 2.5 and image_index < 2.6 and !place_meeting(x,y,Obj_GlassStar) {with(instance_create_depth(x+18*image_xscale,y+18,depth-10,Obj_GlassStar)){falling = true}; with(instance_create_depth(x+18*image_xscale,y+18,depth,Obj_EnemyDieCircle)){color = #3322FF}}
	if image_index >= 1.5 and image_index < 1.6 and !place_meeting(x,y,Obj_GlassStar) {with(instance_create_depth(x+18*image_xscale,y+18,depth-10,Obj_GlassStar)){falling = true}; with(instance_create_depth(x+18*image_xscale,y+18,depth,Obj_EnemyDieCircle)){color = #3322FF}}
	
	break;
	}
}

if !place_meeting(x,y,Obj_GlassStar) {if draw_x != x then draw_x += (image_xscale*0.25)} else draw_x = x-(image_xscale*2)