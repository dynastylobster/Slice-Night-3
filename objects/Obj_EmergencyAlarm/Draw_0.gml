var stage = sin(age / 25);
var color = make_color_rgb(clamp(stage * 50, 0, 255), 0, 0);

layer_background_blend(bg, color);
layer_background_alpha(bg, clamp(stage, 0.2, 0.5));

age++;