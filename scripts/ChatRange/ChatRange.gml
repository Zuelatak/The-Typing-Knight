 var inst = collision_rectangle(x-(sprite_width*2), y-(sprite_height*2), x+(sprite_width*2), x+(sprite_height*2), obj_player, true, true);
if(inst != noone) // Change the  collision to be distance_to_object
{
    draw_sprite(spr_interaction, 0, x, y-((3*sprite_height)/4)); //TODO: Draw in front of everything    
    return true;
}
else
{
    return false;    
}
