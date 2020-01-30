/// @description Insert description here

//position
x = obj_player.x;
y = obj_player.y+10;

image_angle = point_direction(x,y, mouse_x, mouse_y);

//reloading
if (ammo_count = 1)
{
	reloading = true;
}
else
{
	reloading = false;
}

if ((keyboard_check(ord("E"))) and (ammo_count != 5)) or ((mouse_check_button_pressed(mb_right)) and (ammo_count != 5))
{
	reload_counter = 100;
}
reload_counter -= 1;
//firign

firingcooldown -= 1;
if (mouse_check_button(mb_left)) and (firingcooldown < 0) and (ammo_count > 1)
{
	firingcooldown = 10;
	with instance_create_layer(x,y,"bullet_layer", obj_bullet)
	{
		other.ammo_count -= 1;
		speed = 25;
		image_angle = other.image_angle;
		direction = other.image_angle;
	}
}
else 
{
	image_speed = 0;
	image_index = 0;
}