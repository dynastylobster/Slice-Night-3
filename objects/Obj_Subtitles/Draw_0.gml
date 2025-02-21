var col = prevcol

	var	b = (#00FF9D)
	var m = (#FF3A8F)
if (song == Snd_BalladOfDisparCredits) {
 switch(floor(audio_sound_get_track_position(s))) {
	case 1:
		col = b
		w = "I talk about my life and I preach about my pain";
	break;
	case 6:
		col = b
		w = "And then I look at you, who has it so much worse"
	break;
	case 11:
		col = b
		w = "I'm horrified that you endured so much more"
	break;
	case 16:
		col = b
		w = "I guess I couldn't handle... something a lot smaller"
	break;
	case 20:
		col = b
		w = "You..."
	break;
	case 22:
		col = b
		w = "Were pierced through your soul and I'm"
	break;
	case 25:
		col = b
		w = "So petty and bold"
	break;
	case 27:
		col = b
		w = "But if I'm so sorry, why am I caught up in my"
	break;
	case 35:
		col = b
		w = "Anthill of Despair?"
	break;
	case 39:
		col = m
		w = "You tell about your life and you talk about your pain"
	break;
	case 43:
		col = m
		w = "And yet you say 'sorry'? Tell me what is wrong with that"
	break;
	case 48:
		col = m
		w = "I'm horrified that you've endured anything at all"
	break;
	case 53:
		col = m
		w = "So what if you couldn't handle something a bit small"
	break;
	case 58:
	col = m
		w = "You... were pierced through your soul and you're..."
	break;
	case 61:
	col = m
		w = "Not petty at all"
	break;
	case 65:
	col = m
		w = "Please don't be sorry, everybody has their own"
	break;
	case 70:
	col = m
		w = "Anthill of Despair"
	break;
	case 74:
	col = b
		w = "I, was dealt a good hand, and you ,"
	break;
	case 78:
	col = b
		w = "well you would understand but..."
	break;
	case 81: 
	col = b
		w = "I dont have real problems, just makin' mountain's out my"
	break;
	case 85:
	col = b
		w = "ANTHILL OF DESPAIR!"
	break;
	case 87:
	col = m
		w = "(Don't run, no no)"
	break;
	case 92:
	col = b
		w = "I wont cry, no matter how hard I try"
	break;
	case 101:
	col = b 
		w = "I don't know why, But maybe I don't want to"
	break;
	case 104: 
	col = b
		w = "I can't die knowing that your-"
	break;
	case 106:
	col = m
		w = "JUST AS REAL AS ME!"
	break;
	case 109:
	col = m
		w = "Please don't run, I know that you can be the one-"
	break;
	case 115:
	col = m
		w = "To help you, and you might need help, from someone else."
	break;
	case 119:
	col = m
		w = "SO PLEASE DON'T CLOSE IT OVER"
	break;
	case 127:
	col = b
		w = "I still can't cry, It makes me sigh..."
	break;
	case 132:
	col = b
		w = "I wish that there, was a sign:"
	break;
	case 136: 
	col = b
		w = "That I am still going to be"
	break;
	case 141:
	col = b
		w = "the PERSON THAT I WOULD SEE AS ME!"
	break;
	case 146:
	col = m
		w = "so STOP EXPLAING, START COMPLAINING, youve got to let it out"
	break;
	case 151:
	col = m
		w = "resurface it, repourpose it, you need to shout!"
	break;
	case 156:
	col = m
		w = "the busted nerves as the gears turning RUSTED WITH MY TEARS"
	break;
	case 160:
	col = b
		w = "do you wonder how the joy fell off over the operational years?"
	break;
	case 167:
	col = b
		w= "the GEARS ARE TURNING, MIND IS BURNING, I DO NOT KNOW WHAT TO DO"
	break;
	case 170:
	col = b
		w= "my mind is yearning for a churning, IVE GOT TO OPEN UP TO YOU"
	break;
	case 176:
	col = b
		w= "so I'll scream about my life and I'll cry about my pain!"
	break;
	case 181:
	col = b
		w= "and I won't say sorry cause its what I need to do!"
	break;
	case 188:
	col = c_white
		w= "Its way more than an anthill of despair!"
	break;
	case 197:
	col = b
		w= "and for once I feel a tear finally fall accross my face"
	break;
	case 203: 
	col = b
		w= "maybe someday we'll make it home after all"
	break;
	case 207:
	col = c_white
		w= "let's take it one day at a time."
	break;
	}
}
	prevcol = col;
	
if (w != "") {
	draw_set_color(#00132F)
	draw_set_alpha(0.75)
	draw_rectangle(0,227,426,250,false)
	draw_set_alpha(1);
	var text_x = camera_get_view_x(view_camera[0]) + 214;
	var text_y = camera_get_view_y(view_camera[0]) + 220;
	draw_set_halign(fa_center);
	draw_set_font(UndertaleFont)
	draw_set_color(c_black);
	draw_text(text_x - 1, text_y + 1, w);
	draw_set_color(col);
	draw_text(text_x, text_y, w);
	draw_set_halign(fa_left);
	draw_set_color(c_white)
}