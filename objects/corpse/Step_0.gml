if(bbox_top>room_height)
{
	instance_destroy()
}

timer+=30

image_angle=round(timer/90)*90

x+=xvel
y+=yvel
yvel+=grav