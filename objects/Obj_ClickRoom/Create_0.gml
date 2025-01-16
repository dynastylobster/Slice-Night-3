/// @description Insert description here
// You can write your code in this editor

//FUNCTIONS ARE THESE
//"roomselect"
//"menu"
		
_camy = y-120;
playedsound = false;
ini_open("save.ini")
if menuthing = "file1" dest_room = ini_read_real("file1","level",BillyCutsceneRoom1)
if menuthing = "file2" dest_room = ini_read_real("file2","level",BillyCutsceneRoom1)
if menuthing = "file3" dest_room = ini_read_real("file3","level",BillyCutsceneRoom1)

if menuthing = "file4" dest_room = ini_read_real("file4","level",destination)
if menuthing = "file5" dest_room = ini_read_real("file5","level",destination)
if menuthing = "file6" dest_room = ini_read_real("file6","level",destination)

ini_close();

	ini_open("save.ini")
		green = ini_read_real("file7",room_get_name(destination),false);
	ini_close();




if menuthing = "file1" or menuthing = "file2" or menuthing = "file3" {
	if dest_room = BillyCutsceneRoom1 then displaytext = "NEW GAME"	
	if displaytext != "NEW GAME" then green = true
}
if menuthing = "file4" or menuthing = "file5" or menuthing = "file6" {
	if dest_room = BillyCutsceneRoom1 then displaytext = "NEW GAME"	
	if displaytext != "NEW GAME" then green = true
}

age = 0

image_yscale = 1;

if room = Click_here_for_level_select {
	move_snap(16,8)
	}
	
if menuthing = "file1" {
ini_open("save.ini")
	totalsecret = ini_read_real("file1","TotalSecret",0);
	totalstage = ini_read_real("file1","TotalStage",0);
ini_close();
}

if menuthing = "file2" {
ini_open("save.ini")
	totalsecret = ini_read_real("file2","TotalSecret",0);
	totalstage = ini_read_real("file2","TotalStage",0);
ini_close();
}

if menuthing = "file3" {
ini_open("save.ini")
	totalsecret = ini_read_real("file3","TotalSecret",0);
	totalstage = ini_read_real("file3","TotalStage",0);
ini_close();
}

if menuthing = "Extra Levels" {
		displaytext = "Extra Levels"
			}
			
if menuthing = "Extras" {
		displaytext = "Extras"
		}
		
if menuthing = "Options" {
		displaytext = "Options" 
	}
		
if menuthing = "Extra Checkpoints" {
		if global.extracheckpoints = true then displaytext = "More Checkpoint:ON"
		if global.extracheckpoints = false then displaytext = "More Checkpoint:OFF"
	}
		
if locked	{
	if global.beaten = false {
		sprite_index = Spr_ClickRoom_Locked
		displaytext = "LOCKED"
	}
}

if global.beaten locked = false;

if destination = TitleScreenRoomSecondServing {
	func = "roomselect"
	displaytext = "Second Serving"
	}