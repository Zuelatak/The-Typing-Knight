/// @description Every Step
GetInput();
depth = -y;
script_execute(state); 


//down direction
if (max(keyboard_check(vk_down), keyboard_check(ord("S")), 0))
	{
		sprite_index = spr_playerFW;
		image_speed = 2;
	}
//up direction
else if (max(keyboard_check(vk_up), keyboard_check(ord("W")), 0))
	{
		sprite_index = spr_playerBW;
		image_speed = 2; 
	}
//left
else if (max(keyboard_check(vk_left), keyboard_check(ord("A")), 0))
	{
		sprite_index = spr_playerLW;
		image_speed = 2;
	}
	
//right
else if (max(keyboard_check(vk_right), keyboard_check(ord("D")), 0))
	{
		sprite_index = spr_playerRW;
		image_speed = 2;
	}		


//stop animation
if (max(keyboard_check_released(vk_down), keyboard_check_released(ord("S")), 0))
{
	sprite_index = spr_playerFS;
		
}
//up direction
if (max(keyboard_check_released(vk_up), keyboard_check_released(ord("W")), 0))
{
	sprite_index = spr_playerBS;
			 
}
//left
if (max(keyboard_check_released(vk_left), keyboard_check_released(ord("A")), 0))
{
	sprite_index = spr_playerLS;
			
}
	
//right
if (max(keyboard_check_released(vk_right), keyboard_check_released(ord("D")), 0))
{
	sprite_index = spr_playerRS;
			
}		

		




	
	
	