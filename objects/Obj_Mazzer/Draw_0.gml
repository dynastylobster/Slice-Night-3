if (constant || lasering) {
if (age % 6 == 0) {
image_index = !image_index;
}
for (var i = 0; i < 12; i++) {
var truex = x - 0.5;
var truey = y - 0.5;
var xbon = truex;
var ybon = truey;
if (dir == "Up") { ybon -= 1000; } if ( dir == "Down" ) { ybon += 1000; }
if (dir == "Left") { xbon -= 1000; } if ( dir == "Right" ) { xbon += 1000; }

var exbo = 0;
var eybo = 0;
if (vert) { exbo = ((5) - i); } else { eybo = ((5) - i); }

collision_line_list(x + exbo, y + eybo, xbon + 0.5 + exbo, ybon + 0.5 + eybo, [Obj_Wall, Obj_EnemyOnlyBlock, Obj_MetalBlock, Obj_MetalBlockLong], false, false, close, true);
var obj = close[| 0];
if (instance_exists(obj)) {
if (vert) { ybon = obj.y + (obj.sprite_height / 2); } else { xbon = obj.x + (obj.sprite_width / 2); }
}
if (dir != "Spinning") {
draw_line_width_color(truex + exbo, truey + eybo, xbon + exbo, ybon + eybo, 1 + age % 3, color1, color2);
} else {
var color = c_red;
var secolor = c_white
if (i == 0 || i == 6 || i == 11) { color = c_blue; secolor = c_green; }
draw_line_width_color(truex + exbo + (opin * 2), truey + eybo + (spin * 4), truex + (spin * 100) + exbo, truey + (opin * 100) + eybo, 1 + age % 3, color, secolor);
}
ds_list_clear(close);
}
} else {
image_index = 0;
}

// Inherit the parent event
depth = 550;
event_inherited();