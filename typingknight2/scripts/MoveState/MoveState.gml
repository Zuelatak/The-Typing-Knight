/// MoveState
// Get Direction
dir = point_direction(0, 0, xaxis, yaxis);

//show_debug_message("XAXIS = " + string(xaxis));
//show_debug_message("YAXIS = " + string(yaxis));

// Get Length
if(xaxis == 0 && yaxis == 0)
{
	length = 0;	
}
else
{
	length = spd;	
	if(keyboard_check(vk_shift))
	{	
		length *= sprintSpd;
	}
	
}
//show_debug_message(length);
// Get the speed variables
horspeed = lengthdir_x(length, dir);
verspeed = lengthdir_y(length, dir);

// Horizontal Collisions
if(place_meeting(global.playerLocationX + horspeed, global.playerLocationY, obj_playerCollider))
{
	while(!place_meeting(global.playerLocationX + sign(horspeed), global.playerLocationY, obj_playerCollider))
	{
		global.playerLocationX += sign(horspeed);
	}
	horspeed = 0;
}
 
global.playerLocationX += horspeed;

if(place_meeting(global.playerLocationX, global.playerLocationY + verspeed, obj_playerCollider))
{
	while(!place_meeting(global.playerLocationX, global.playerLocationY + sign(verspeed), obj_playerCollider))
	{
		global.playerLocationY += sign(verspeed);
	}
	verspeed = 0;
	
	
}
 
global.playerLocationY += verspeed;