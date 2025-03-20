if(global.desert>0){exit}
var walllayer = layer_tilemap_get_id("Tiles_1")
if(started)
{
	var spode = 3
	if(wait>0){wait-=1}
	repeat spode
	{
		var transx = lengthdir_x(32,image_angle-90)
		var transy = lengthdir_y(32,image_angle-90)
		if wait=0 && !collision_rectangle((x-32)+transx,(y-32)+transy,(x+32)+transx,(y+32)+transy,walllayer,1,0)
		{
			image_angle+=image_xscale*-90
			wait=5
		}
		var transx = lengthdir_x(1*image_xscale,image_angle)
		var transy = lengthdir_y(1*image_xscale,image_angle)
		if collision_rectangle((x-32)+transx,(y-32)+transy,(x+32)+transx,(y+32)+transy,walllayer,1,0)
		{
			image_angle+=image_xscale*90
		}
		x+=lengthdir_x(1*image_xscale,image_angle)
		y+=lengthdir_y(1*image_xscale,image_angle)
	}
}
else
{
	repeat 3
	{
		if(place_meeting(x,y+1,walllayer))
		{
			started=1
		}
		else
		{
			y+=1
		}
	}
}
