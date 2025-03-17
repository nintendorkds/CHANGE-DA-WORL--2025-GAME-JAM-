var walllayer = layer_tilemap_get_id("Tiles_1")
var spode = 3
if(wait>0){wait-=1}
var transx = lengthdir_x(32,image_angle-90)
var transy = lengthdir_y(32,image_angle-90)
if wait=0 && !collision_rectangle((x-32)+transx,(y-32)+transy,(x+32)+transx,(y+32)+transy,walllayer,0,0)
{
	image_angle+=image_xscale*-90
	wait=5
}
x+=lengthdir_x(spode,image_angle)
y+=lengthdir_y(spode,image_angle)
