var Collision = instance_create_depth(x, y, -y, Collisions);
var parentSprite = sprite_index;
var parentSpriteWidth = image_xscale;
var parentSpriteHeight = image_yscale;
with(Collision)
{
	Collision.sprite_index = parentSprite;
	Collision.image_xscale = parentSpriteWidth;
	Collision.image_yscale = parentSpriteHeight;
	Collision.depth = -y;
}