/// @description Insert description here
with (obj_ammo)
		{
			image_index = obj_gun.ammo_count;
		}
//position
x = obj_player.x;
y = obj_player.y+10;

image_angle = point_direction(x,y, mouse_x, mouse_y);

//firign

firingcooldown -= 1;

if (mouse_check_button(mb_left)) and (firingcooldown < 0)
{
	
	firingcooldown = 10;
	with instance_create_layer(x,y,"bullet_layer", obj_bullet)
	{
		
		if (other.ammo_count > 0)
		{
			other.ammo_count -= 1;
		}
		else
		{
			other.ammo_count = 5;
		}
		speed = 25;
		image_angle = other.image_angle;
		direction = other.image_angle;
		with (obj_gun)
		{
			image_speed = 2;
		}
	}
}
else 
{
	image_speed = 0;
	image_index = 0;
}