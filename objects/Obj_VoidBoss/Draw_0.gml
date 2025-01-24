// Inherit the parent event
event_inherited();


if (attackTimer == holdit + 120) {

switch (ephase) {
case 0:
text = "You. " + string(global.character) + ".";
ephase = 0.01;
break;
case 0.01:
text = "What do you expect to get out of this?";
ephase = 0.02;
break;
case 0.03:
text = "Oh well. You will die all the same.";
ephase = 0.04;
break;
case 0.04:
text = "";
ephase = 0.05;
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

}


holdit = attackTimer;
}

draw_text(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), string([x, y]));

if (text != "") {
// draw text
}