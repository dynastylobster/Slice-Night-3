/// @description Insert description here
// You can write your code in this editor
depth += 50
if instance_exists(Obj_Model1Boss) {
		draw_sprite_ext(sprite_index,1,x,y,distance_to_point(Obj_Model1Boss.x,Obj_Model1Boss.y),1,point_direction(x,y,Obj_Model1Boss.x,Obj_Model1Boss.y),c_white,1);	
	}

draw_self();
depth -= 50