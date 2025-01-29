var heatPercent = 255 - ((clamp(heat, 0, maxHeat) / maxHeat) * 255);
var color = make_color_rgb(255, heatPercent, heatPercent);
image_blend = color;

draw_self();