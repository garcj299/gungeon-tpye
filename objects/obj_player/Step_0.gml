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
frame_counter = 10;
}
//standing still 

if (hsp = 0) and (vsp = 0) 
{
	if (frames >= 4)
	{
		frames = 0;
	}
if (frames <= 4) image_index = frames;
}

//moving right
if (hsp > 0) and (vsp = 0)
{
	if (frames < 5) or (frames > 7)
	{
		frames = 5;
	}
if (frames <= 7) image_index = frames;
}

//moving left 9,11

if (hsp < 0) and (vsp = 0)
{
	if (frames < 9) or (frames > 11)
	{
		frames = 9;
	}
if (frames < 12) image_index = frames;
}

//moving down 12,16

if (vsp > 0) and (hsp = 0)
{
	if (frames < 12) or (frames > 16)
	{
		frames = 12;
	}
if (frames <= 16) image_index = frames;
}

//moving up 17,21

if (vsp < 0) and (hsp = 0)
{
	if (frames < 17) or (frames > 21)
	{
		frames = 17;
	}
if (frames <= 21) image_index = frames;
}










