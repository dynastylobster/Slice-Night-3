// Inherit the parent event
event_inherited();
draw_set_color(c_red)
if (railguntimer == 1) {
	draw_line_width(x, y, targPosX, targPosY,2);
}
if (railguntimer > 0 && railguntimer % 4 < 1) {
	draw_line_width(x, y, targPosX, targPosY,3);
			

} 
draw_set_color(c_white)
if railguntimer > 0 {draw_sprite(Spr_CannonShooterReticle,age/8,targPosX,targPosY)	}