/// @description Insert description here
// You can write your code in this editor
if instance_exists(Obj_Model1Train) {
		draw_sprite_ext(sprite_index,1,x,y,distance_to_point(Obj_Model1Train.x+4,Obj_Model1Train.y+14),1,point_direction(x,y,Obj_Model1Train.x,Obj_Model1Train.y+6),#8080D0,1);
	}
draw_self();