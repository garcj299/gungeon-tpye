/// @description Insert description here
// You can write your code in this editor
direction = image_angle;
image_angle = point_direction(x,y, obj_player.x, obj_player.y);
if (!point_in_circle(obj_player.x,obj_player.y,x,y,128))
{
	hsp = 0;
	vsp = 0;
	speed = 5;
}
else
{
	speed = 0;
	hspeed = 1;
	vspeed = 1;
}

if (hsp > 0) or (vsp > 0)
{
	y = y + vsp;
	x = x + hsp;
}
	
//vertical collision

if (place_meeting(x, y + speed, obj_wall))
{
	speed = 0;
}
//y = y + vsp;

//horizontal collision

if (place_meeting(x + speed, y, obj_wall))
{
	speed = 0;
}
//x = x + hsp;





