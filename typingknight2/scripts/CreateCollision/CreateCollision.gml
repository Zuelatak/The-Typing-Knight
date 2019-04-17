var Collision = instance_create_depth(x, y, -y, obj_playerCollider);
with(Collision)
{
    sprite_index = other.sprite_index;
    image_xscale = other.image_xscale;
    image_yscale = other.image_yscale;
}