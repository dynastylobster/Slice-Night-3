// Hey washlums! I wanted to beautify your code, so I started fresh.

// Base Variables
maxHP = 3;
canDoubleJump = false;
baseCoyoteTime = 9;
jumpSpeed = 6;
wallJumpSpeed = 4.14;

accel = 0.25;
deccel = 0.20; 
maxWalkSpeed = 1.5;
maxRunSpeed = 2.3;

fallAccel = 0.225; 
maxFallSpeed = 7;

autoTileCol = -4;
try { autoTileCol = layer_tilemap_get_id("TileCollision"); } catch (err) { autoTileCol = -4; }
blocks = [Obj_Wall, Obj_MetalBlock, autoTileCol];

// Active Variables
currentHP = 5;
iFrames = 0;
busySlicing = false;
walking = false;
running = false;
onWall = false;
grounded = true;
hasDoubleJumped = false;
inWater = false;
dead = false;
coyoteTime = 0;
currentDashes = 0;
heat = 0;
facing = 1;
xSpeed = 0;
ySpeed = 0;
