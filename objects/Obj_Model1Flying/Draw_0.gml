// Inherit the parent event
event_inherited();
draw_set_color(#ED008C)
if (railguntimer <= 3 && railguntimer >= 1) {
	draw_line_width(x, y + 3, lengthdir_x(20000, point_direction(x, y, targPosX, targPosY)), lengthdir_y(20000, point_direction(x, y, targPosX, targPosY)),5);
}
if (railguntimer > 0 && railguntimer % 5 <= 2) {
	draw_set_alpha(0.5);
	draw_line_width(x, y + 3, lengthdir_x(20000, point_direction(x, y, targPosX, targPosY)), lengthdir_y(20000, point_direction(x, y, targPosX, targPosY)),2);
	draw_set_alpha(1);
} 
draw_set_color(c_white)
if railguntimer > 0 {draw_sprite(Spr_CannonShooterReticle,age/8,targPosX,targPosY)	}

if distance_to_object(Obj_Billy) < 58 and instance_exists(Obj_BillyShip){
draw_sprite(Spr_WalljumpEffectSprite,age/8,Obj_BillyShip.x,Obj_BillyShip.y);
}