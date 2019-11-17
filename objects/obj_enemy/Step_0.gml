/// @description Insert description here
// You can write your code in this editor

//vertical collision

if (place_meeting(x, y + vsp, obj_wall))
{
	vsp = vsp * -1;
}
y = y + vsp;

//horizontal collision

if (place_meeting(x + hsp, y, obj_wall))
{
	hsp = hsp * -1;
}
x = x + hsp;





