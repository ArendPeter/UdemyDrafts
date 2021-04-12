//hspeed = abs(hspeed)

/*
col_y		t	dir
0			0	45
128			1	-45
*/

col_y = y - oPlayer.y
t = col_y / 128

/*dir = lerp(45, -45, t)
sp = sp + 1*/
direction = lerp(45, -45, t)
speed = speed + 1
image_speed = 1
image_index = 0

audio_play_sound(bounce, 0, false)

