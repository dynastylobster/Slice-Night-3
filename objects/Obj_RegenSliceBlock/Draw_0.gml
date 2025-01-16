/// @description Insert description here
// You can write your code in this editor
draw_self()
if dead {
draw_sprite_ext(Spr_BlockRegenParticle,0,x+16+(particleDist),y+16+(particleDist),1,1,alarm[1],c_white,20/alarm[1])	
draw_sprite_ext(Spr_BlockRegenParticle,0,x+16-(particleDist),y+16+(particleDist),1,1,alarm[1],c_white,20/alarm[1])	
draw_sprite_ext(Spr_BlockRegenParticle,0,x+16-(particleDist),y+16-(particleDist),1,1,alarm[1],c_white,20/alarm[1])	
draw_sprite_ext(Spr_BlockRegenParticle,0,x+16+(particleDist),y+16-(particleDist),1,1,alarm[1],c_white,20/alarm[1])	
}