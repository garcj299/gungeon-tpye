/// @description Insert description here
// You can write your code in this editor
with (obj_player)
{
	draw_text(370,500,"hsp = " + string(hsp))
	draw_text(370,480,"vsp = " + string(vsp))
	draw_text(370,460,"frames = " + string(frames))
	draw_text(370,440,"frame_counter = " + string(frame_counter))
	draw_text(370,420,"ammo_count = " + string(obj_gun.ammo_count))
	draw_text(370,400,"reloading = " + string(obj_gun.reloading))
	draw_text(370,380,"ammo_count = " + string(obj_gun.ammo_count))
	draw_text(370,360,"reload_counter = " + string(obj_gun.reload_counter))
}