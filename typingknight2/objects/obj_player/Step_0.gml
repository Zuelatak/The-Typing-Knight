/// @description Every Step
GetInput();
depth = -y;
x = global.playerLocationX;
y = global.playerLocationY;
sprite_index = global.playerDirection;
MoveState()

//left
if (dir == 180 && length != 0)
{
	global.playerDirection = spr_playerLW;
	image_speed = length;
}
//right
else if (dir == 0 && length != 0)
{
	global.playerDirection = spr_playerRW;
	image_speed = length;
}		
//down direction
else if (dir == 225 || dir == 270 || dir == 315 && length != 0)
{
	global.playerDirection = spr_playerFW;
	image_speed = length;
}
//up direction
else if (dir == 45 || dir == 90 || dir == 135 && length != 0)
{
	global.playerDirection = spr_playerBW;
	image_speed = length; 
}


//stop animation
if (global.playerDirection == spr_playerFW && length == 0)
{
	global.playerDirection = spr_playerFS;
}
//up direction
if (global.playerDirection == spr_playerBW && length == 0)
{
	global.playerDirection = spr_playerBS;	 
}
//left
if (global.playerDirection == spr_playerLW && length == 0)
{
	global.playerDirection = spr_playerLS;	
}
	
//right
if (global.playerDirection == spr_playerRW && length == 0)
{
	global.playerDirection = spr_playerRS;
}		

		




	
	
	