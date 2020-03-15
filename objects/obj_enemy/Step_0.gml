/// @description Insert description here
// You can write your code in this editor
direction = obj_enemy_gun.image_angle;


if (!point_in_circle(obj_player.x,obj_player.y,x,y,256))
{

	speed = random_range(1,3);
}
else
{
	speed = 0;
}

//vertical collision

if (place_meeting(x, y + speed, obj_wall))
{
	speed = 0;
	hspeed = 5;
}

if (place_meeting(x, y - speed, obj_wall))
{
	speed = 0;
	hspeed = -5;
}

//horizontal collision

if (place_meeting(x + speed, y, obj_wall))
{
	speed = 0;
	vspeed = 5;
}

if (place_meeting(x - speed, y, obj_wall))
{
	speed = 0;
	vspeed = -5;
}

//dying

if (enemy_health = 0)
{
	enemy_alive = false;
	instance_destroy();
}




