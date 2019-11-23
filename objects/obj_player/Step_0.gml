/// @description Insert description here
// You can write your code in this editor
//vertical movement
key_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));

var move_y = key_down - key_up;

vsp = move_y * walksp;

//horizontal movement

key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));

var move_x = key_right - key_left;

hsp = move_x * walksp;

//vertical collision

if (place_meeting(x, y + vsp, obj_wall))
{
	vsp = 0;
}
y = y + vsp;

//horizontal collision

if (place_meeting(x + hsp, y, obj_wall))
{
	hsp = 0;
}
x = x + hsp;

//animatios
//frame_counter
frame_counter -= 1;
if (frame_counter <= 0)
{
frames += 1;
frame_counter = 60;
}
//standing still 

if (hsp = 0) and (vsp = 0) 
{
	if (frames >= 4)
	{
		frames = 0;
	}
}
if (frames <= 4) image_index = frames;

if (hsp > 0)
{
	if (frames < 5) or (frames > 7)
	{
		frames = 5;
	}
}
if (frames <= 7) image_index = frames;
		

















