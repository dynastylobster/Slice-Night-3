var heatPercent = (heat / maxHeat);
var color = make_color_rgb(floor(255), floor(255 - (abs(heatPercent) * 255)), floor(255 - (heatPercent * 255)));
image_blend = color;

draw_self();