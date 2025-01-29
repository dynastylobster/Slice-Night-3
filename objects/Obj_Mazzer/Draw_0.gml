if (constant || lasering) {
if (age % 6 == 0) {
image_index = !image_index;
}
for (var i = 0; i < 6; i++) {
var truex = x - 0.5;
var truey = y - 0.5;
var xbon = truex;
var ybon = truey;
if (dir == "Up") { ybon -= 1000; } if ( dir == "Down" ) { ybon += 1000; }
if (dir == "Left") { xbon -= 1000; } if ( dir == "Right" ) { xbon += 1000; }

var exbo = 0;
var eybo = 0;
if (vert) { exbo = ((2) - i); } else { eybo = ((2) - i); }

var close = ds_list_create();
collision_line_list(x + exbo, y + eybo, xbon + 0.5 + exbo, ybon + 0.5 + eybo, [Obj_Wall, Obj_EnemyOnlyBlock], true, true, close, true);
var obj = close[| 0];
if (instance_exists(obj)) {
if (vert) { ybon = obj.y + (obj.sprite_height / 2); } else { xbon = obj.x + (obj.sprite_width / 2); }
}

draw_line_width_color(truex + exbo, truey + eybo, xbon + exbo, ybon + eybo, 1 + age % 3, c_red, c_white);
}
} else {
image_index = 0;
}

// Inherit the parent event
depth = 800;
event_inherited();