var w = x + (sprite_width * image_xscale);
var h = y + (sprite_height * image_yscale);

var randx = random_range(x, w);
var randy = random_range(y, h);

instance_create_depth(randx, randy, 400, Dust_TemFlake, { cold : (constHeatAdded > 0 ? false : true) });