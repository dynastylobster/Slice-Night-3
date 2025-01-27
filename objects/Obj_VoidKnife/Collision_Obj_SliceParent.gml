switch(other.object_index) {
case Obj_SliceSide:
immuneTimer = 30;
if (dink == 0) {
if (instance_exists(Obj_Billy)) {
if (Obj_Billy.y > y) { dink = -30; } else { dink = 30; }
} else { dink = 30; }
image_angle = dink;
}
other.done_slicing = true;
break;
case Obj_SliceDown:
immuneTimer = 30;
dink = 30;
image_angle = dink;
other.done_slicing = true;
break;
}