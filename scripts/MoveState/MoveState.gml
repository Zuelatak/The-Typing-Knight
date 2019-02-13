/// MoveState
// Get Direction
direction = point_direction(0, 0, xaxis, yaxis);

// Get Length
if(xaxis == 0 && yaxis == 0)
{
	length = 0;	
}
else
{
	length = speed;	
}

// Get the speed variables
hspeed = lengthdir_x(length, direction);
vspeed = lengthdir_y(length, direction);

// Horizontal Collisions
if(place_meeting(x+hspeeed, y, obj_Wall))
{
	while(!place_meeting(x+sign(hspeed), y, obj_wall))
	{
		x += sign(hspeed);
	}
	hspeed = 0;
}
 
x += hspeed;

if(place_meeting(x, y+vspeed, obj_Wall))
{
	while(!place_meeting(x, y+sign(vspeed), obj_wall))
	{
		y += sign(vspeed);
	}
	vspeed = 0;
}
 
y += vspeed;