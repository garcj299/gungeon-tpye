/// @description Insert description here
// You can write your code in this editor

x_point = obj_player.x;
y_point = obj_player.y;
//enemy_speed = 2;

var maxrot = 30;
var rotstep = 10;
var ahead = 3;
var onspot = true;

mp_potential_settings( maxrot, rotstep, ahead, onspot);


if (!point_in_circle(obj_player.x,obj_player.y,x,y,256))
{

	enemy_speed = 2;
}
else
{
	enemy_speed = 0;
}

mp_potential_step(x_point,y_point,enemy_speed,false);

//dying

if (enemy_health = 0)
{
	enemy_alive = false;
	instance_destroy();
}
