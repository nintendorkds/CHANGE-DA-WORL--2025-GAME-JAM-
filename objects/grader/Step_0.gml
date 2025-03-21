timer+=1

if(timer=300)
{
	ini_open("options.ini")
	var temphs = ini_read_real("ROOMSAVES", room_get_name(room), 0);
	
	if(temphs<global.points)or(is_numeric(temphs))
	{
		ini_write_real("ROOMSAVES", room_get_name(room), global.points)
	}
	ini_close()

	room_goto(Title)
}