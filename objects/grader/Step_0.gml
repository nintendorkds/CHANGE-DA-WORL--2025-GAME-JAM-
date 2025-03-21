timer+=1

if(timer>=300)
{
	var filename = string(room)+".sav"

	var file = file_text_open_read(filename)
	var temphs = file_text_read_real(file)
	file_text_close(file)
	
	if(temphs<global.points)
	{
		var file = file_text_open_write(filename)
		file_text_write_real(file,global.points)
		file_text_close(file)
	}

	room_goto(Title)
}