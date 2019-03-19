/// @description Every Step
GetInput();
depth = -y;
script_execute(state); 


//down direction
if (keyboard_check(vk_down))
	{
		sprite_index = spr_frontWalk;
		image_speed = 2;
	}
//up direction
if (keyboard_check(vk_up))
	{
		sprite_index = spr_backWalk;
		image_speed = 2; 
	}
//left
if (keyboard_check(vk_left))
	{
		sprite_index = spr_sideWalkL;
		image_speed = 2;
	}
	
//right
if (keyboard_check(vk_right))
	{
		sprite_index = spr_sideWalkR;
		image_speed = 2;
	}		


//stop animation
if (keyboard_check_released(vk_down))
{
	sprite_index = spr_frontStand;
		
}
//up direction
if (keyboard_check_released(vk_up))
{
	sprite_index = spr_backStand;
			 
}
//left
if (keyboard_check_released(vk_left))
{
	sprite_index = spr_sideStandL;
			
}
	
//right
if (keyboard_check_released(vk_right))
{
	sprite_index = spr_sideStandR;
			
}		

		




	
	
	