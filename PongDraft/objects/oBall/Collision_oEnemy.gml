//hspeed = -abs(hspeed)

/*
col_y		t	dir
0			0	45
128			1	-45
*/

col_y = y - oEnemy.y
t = col_y / 128

direction = lerp(135, 225, t)
speed += 1

image_speed = 1
image_index = 0
audio_play_sound(bounce, 0, false)