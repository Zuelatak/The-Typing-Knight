/// @description Insert description here
// You can write your code in this editor
depth = -y;
if(fadeDone)
{
	global.prevRoomLocation = global.roomLocation;
	global.roomLocation = rm_battle;
	global.enemyBattleObject = obj_battleSlime;
	global.enemyObject = obj_slime;
	global.enemyArmor = 0;
	global.enemyDamage = 5;
	global.battleDifficulty = global.overallDifficulty + 2;
    room_goto(rm_battle);
}
if(distance_to_object(obj_player) < 100)
{
	sprite_index = spr_slimeMoving;	
	move_towards_point(obj_player.x, obj_player.y, spd);
}
else
{
	sprite_index = spr_slimeStill;	
	speed = 0;
}

if(place_meeting(x + hspeed, y, obj_playerCollider))
{
	sprite_index = spr_slimeStill;
	speed = 0;
}

if(place_meeting(x, y + vspeed, obj_playerCollider))
{
	sprite_index = spr_slimeStill;
	speed = 0;
}
