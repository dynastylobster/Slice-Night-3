// Inherit the parent event
event_inherited();

if (phase >= 2) {
if (random_range(0, 200) <= 2) {
layer_background_blend(layer_background_get_id(layer_get_id("Bg_still")), c_white);
lightningCounter = 5;
}
if (lightningCounter < 3) {
layer_background_blend(layer_background_get_id(layer_get_id("Bg_still")), c_grey);
}
if (lightningCounter == 0) {
layer_background_blend(layer_background_get_id(layer_get_id("Bg_still")), c_black);
} else {
lightningCounter--;
}
} else {
layer_background_blend(layer_background_get_id(layer_get_id("Bg_still")), c_black);
}

if (attackTimer >= holdit + 120) {

switch (ephase) {
case 0:
text = "You. " + string(global.character) + ".";
ephase = 0.01;
break;
case 0.01:
text = "What did you expect?";
ephase = 0.02;
break;
case 0.02:
text = "If it wasn't death...";
ephase = 0.03;
break;
case 0.03:
text = "...Then you are stupider than you look.";
ephase = 0.04;
break;
case 0.04:
text = "";
phase = 1;
break;

case 1.5:
text = "Persistence is a blessing.";
ephase = 1.51;
break;
case 1.51:
text = "I like that about you.";
ephase = 1.52;
break;
case 1.52:
text = "";
ephase = 1.53;
break;

case 2.5:
text = "What are you attempting?";
ephase = 2.51;
break;
case 2.51:
text = "Your death is imminent.";
ephase = 2.52;
break;
case 2.52:
text = "";
ephase = 2.53;
break;

case 3:
text = "Stop it.";
ephase = 3.01;
break;
case 3.01:
text = "You're getting annoying.";
ephase = 3.02;
break;
case 3.02:
text = "";
ephase = 3.03;
break;

}

attackTimer = 0;
holdit = attackTimer;
}

//draw_text(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), string([x, y]));

if (text != "") {
	var text_x = camera_get_view_x(view_camera[0]) + 214;
	var text_y = camera_get_view_y(view_camera[0]) + 220;
	var randx = random_range(-1, 1);
	var randy = random_range(-2, 2);
	draw_set_halign(fa_center);
	draw_set_font(UndertaleFont)
	if (phase == 4) {
	draw_set_color(c_white)
	} else {
	draw_set_color(c_black)
	}
	draw_text(text_x + randx, text_y + randy, text);
	if (phase == 4) {
	draw_set_color(c_black)
	} else {
	draw_set_color(c_white)
	}
	draw_text(text_x + (randx * -1), text_y + (randy * -1), text);
}