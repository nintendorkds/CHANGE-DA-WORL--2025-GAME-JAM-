if(global.desert>0){exit}
var walllayer = layer_tilemap_get_id("Tiles_1")
if(place_meeting(x,y-(image_yscale*vel),walllayer))
{
	image_yscale*=-1
}
if(place_meeting(x+(image_xscale*vel),y,walllayer))
{
	image_xscale*=-1
}
x+=(image_xscale*vel)
y-=(image_yscale*vel)


if(white)and(vel<2)and(floor(image_index)=2)
{
	var target = instance_nearest(x,y,Player)
	if(instance_exists(Player)=0){target=self}
	if abs(x-target.x)>room_width
	{
		if(target.x-x)
		{
			image_xscale=-1
		}
		else
		{
			image_xscale=1
		}
	}
	else
	{
		if(target.x-x)
		{
			image_xscale=1
		}
		else
		{
			image_xscale=-1
		}
	}
	if abs(y-target.y)>room_height
	{
		if(target.y-y)
		{
			image_yscale=-1
		}
		else
		{
			image_yscale=1
		}
	}
	else
	{
		if(target.y-y)
		{
			image_yscale=-1
		}
		else
		{
			image_yscale=1
		}
	}
}

if(vel<3)and(floor(image_index)=2)
{
	vel=3
}
vel*=.95