/// @description Insert description here
// You can write your code in this editor
hp = 3;
max_hp = 3;
spinning = false;
sliding = false
walking = false
running = false
jumpspeed = 6
doublejump = false;
has_double_jumped = false;
max_fallspeed = 7
bouncing = false
max_walkspeed = 1.5
max_runspeed = 2.3 
dashes = 0
//walljump_multipler = 3.5
walljump_multipler = 4.14

// hi washlums!!! :3
heat = 0;
maxHeat = 600;

inwater = false
dashingfor = 0
charge_timer = 0
charging = false;
dashing = false;
alarm[2] = 6
grav = 0.225
accell = 0.25;
beforex = x
beforey = y
deccell = 0.25;
deccell_ground = 0.25;
deccell_air = 0.25
facing = 1;
running_timer = 0
slicing_side = false
slicing_down = false
slicing_orbit = false
hit = false
age = 0
i_frames = 0
place_x = x
place_y = y
dead = false
cam_x = clamp(x-213,0,room_width-426)
real_cam_y = clamp(y-120,0,room_height-240)
cam_y = clamp(y-120,0,room_height-240)

about_to_jump = false

koyote_time = 9
base_koyote_time = 9
canDoubleJump = false;

xspeed = 0 
yspeed = 0

grounded = true;

try { autoTileCol = layer_tilemap_get_id("TileCollision"); } catch (err) { autoTileCol = -4; }



cam_x = clamp(x-213,0,room_width-426)

if xspeed >= 5.5 and !instance_exists(Obj_ParryBallEffect){
	cam_x = lerp(cam_x	, clamp(x-213+(xspeed*20),0,room_width-426), 0.125)
} else 

{
cam_x = clamp(x-213,0,room_width-426)	
}


real_cam_y = clamp(y-120,0,room_height-240)
if grounded or (bouncing and y < cam_y+120) or (instance_exists(Obj_WallJumpEffect)) or (instance_exists(Obj_ParryBallEffect)) then cam_y = lerp(cam_y,real_cam_y,0.05)
if !grounded {
	if cam_y < y-120 {
		if sliding {if cam_y < real_cam_y-1 cam_y+=1} else {
			if cam_y < real_cam_y-2 cam_y+=2
		}
		}
	}

camera_set_view_pos(view_camera[0],cam_x,cam_y);