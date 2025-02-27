/// @description Insert description here
// You can write your code in this editor
draw_self()

		if displaytext = "NEW GAME" {
		if (GameObject.a_timer) != -4 {
			if GameObject.a_timer < 1500 or GameObject.a_timer > 4000 {
					global.costume = "Billy (Fox)"
				}
			}
		}

draw_sprite_ext(sprite_index,2,x,y,-1,1,0,c_white,1)
draw_sprite_ext(sprite_index,2,x+sprite_width,y,1,1,0,c_white,1)
draw_set_font(SliceSans)
draw_set_color(c_black)
draw_set_halign(fa_middle)

if func = "roomselect" {

if destination != Click_here_for_level_select and destination != TitleScreenRoomSecondServing {
draw_text(x+sprite_width/2,y+2,string(room_get_name(destination)))
} else {
	draw_set_halign(fa_center)
if destination!= TitleScreenRoomSecondServing draw_text(x+sprite_width/2,y+2,"LEVEL SELECT")

}

draw_set_color(c_white)
if destination != Click_here_for_level_select and destination != TitleScreenRoomSecondServing{
draw_text(x+sprite_width/2,y+1,string(room_get_name(destination)))
} else {
		draw_set_halign(fa_center)
		if destination = Click_here_for_level_select {
 draw_text(x+sprite_width/2,y+1,"LEVEL SELECT")
		}
		if destination = TitleScreenRoomSecondServing {
			draw_set_color(c_black)
			 draw_text(x+sprite_width/2,y+2,"Second Serving")
			 draw_set_color(c_white)
			 draw_text(x+sprite_width/2,y+1,"Second Serving")
		}
}

}


if func = "menu"{
	draw_set_color(c_black)
		draw_text(x+sprite_width/2,y+2,string(displaytext))
	draw_set_color(c_white)
		draw_text(x+sprite_width/2,y+1,string(displaytext))
	}

draw_set_halign(fa_left)




if place_meeting(x,y,Obj_ButtonSelect) {
	draw_sprite(Spr_MenuArrow,Obj_ButtonSelect.image_index,x-3,y+8)
	draw_sprite_ext(Spr_MenuArrow,Obj_ButtonSelect.image_index,x+sprite_width+3,y+8,-1,1,0,c_white,1);
	}

if menuthing = "file1" or menuthing = "file2" or menuthing = "file3" {
	draw_set_color(c_blue)
	if image_index >= 1 { draw_text(x+sprite_width+5+16,y+1,"Clears:"+string(totalstage)+"/36"); }
	if image_index >= 1 { draw_text(x+sprite_width+81+16,y+1,"?:"+string(totalsecret)+"/6");	}
	draw_set_color(c_white)
		if image_index >= 1 { draw_text(x+sprite_width+5+16,y,"Clears:"+string(totalstage)+"/36"); }
	if image_index >= 1 { draw_text(x+sprite_width+81+16,y,"?:"+string(totalsecret)+"/6");	}
		}
