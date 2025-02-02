// Inherit the parent event
event_inherited();

hoverHeight *= 16;

homeX = x;
targX = x;

// phases = ["Roaming", "Finding", "Hunting"];
phase = "Finding";

age = 0;
suckness = 0;
drawy = 0;

mouth1 = instance_create_layer(x, y, "Instances_1", Obj_LeechMouth, { owner : id});
mouth2 = instance_create_layer(x, y, "Instances_1", Obj_LeechMouth, { owner : id});
mouth3 = instance_create_layer(x, y, "Instances_1", Obj_LeechMouth, { owner : id});
mouth4 = instance_create_layer(x, y, "Instances_1", Obj_LeechMouth, { owner : id});