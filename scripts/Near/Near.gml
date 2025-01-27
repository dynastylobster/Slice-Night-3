function Near(dist = 90, obj = Obj_Billy){
if (instance_exists(obj)) {

var closeinst = noone;
var fardist = infinity;
if (instance_number(obj) > 1) {
for (i = 0; i < instance_number(obj); i++) {
var otherid = instance_find(obj, i);
if (otherid != self.id) {
if (distance_to_object(otherid) < fardist) {
closeinst = otherid;
fardist = distance_to_object(otherid);
}
}
}
} else {
closeinst = obj;
}

if (distance_to_object(closeinst) < dist) { return true; }
return false;
}
}