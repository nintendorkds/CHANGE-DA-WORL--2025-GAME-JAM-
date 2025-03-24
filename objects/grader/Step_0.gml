timer+=1

if(timer=360)
{
	ini_open("options.ini")
	var temphs = ini_read_real("ROOMSAVES", room_get_name(room), 0);
	
	if(temphs<global.points)
	{
		ini_write_real("ROOMSAVES", room_get_name(room), global.points)
	}
	ini_close()

	room_goto(Title)
}

if(global.starhop>0)
{
	global.starhop-=1
}
if(global.pointhop>0)
{
	global.pointhop-=1
}
