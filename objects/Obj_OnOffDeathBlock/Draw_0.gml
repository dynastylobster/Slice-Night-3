/// @description Insert description here
// You can write your code in this editor
if mask_index = sprite_index and int64(block.image_index)!= 1 {
	draw_self();	
}
if block.image_index = 2 and !on {
		draw_sprite(Spr_BlinkBlock,2,x,y)
	}