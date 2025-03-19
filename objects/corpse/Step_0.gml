if(bbox_top>room_height)
{
	instance_destroy()
}

timer-=20

image_angle=timer

x+=xvel
y+=yvel
yvel+=grav