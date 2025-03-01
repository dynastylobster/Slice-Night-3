/// @description Insert description here
// You can write your code in this editor
if !global.paused {
if instance_exists(Obj_MetalBlock) {

with(Obj_MetalBlock) {
		heat -= 8
	}
	
with(Obj_Billy) {
	var metalblock = -4
		if instance_place(x,y+4,Obj_MetalBlock) {
			metalblock = instance_place(x,y+4,Obj_MetalBlock)
			if metalblock!= -4 {
				if metalblock.heat > 30 {
				heat += 3
				}
			}
		}
	}

}

}