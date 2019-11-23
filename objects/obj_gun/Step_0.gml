/// @description Insert description here

//position
x = obj_player.x;
y = obj_player.y;

image_angle = point_direction(x,y, mouse_x, mouse_y);

//firign

firingcooldown -= 1;

if (mouse_check_button(mb_left)) and (firingcooldown < 0)
{
	firingcooldown = 10;
	with instance_create_layer(x,y,"bullet_layer", obj_bullet)
	{
		speed = 25;
		direction = other.image_angle;
	}
}