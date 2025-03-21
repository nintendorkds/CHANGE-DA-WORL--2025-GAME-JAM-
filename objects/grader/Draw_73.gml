draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(BIGFONT)

draw_set_color(c_white)
draw_text((room_width/2),(room_height/2)-96,"LEVEL COMPLETE!")

if(timer>50)
{
	draw_set_color(c_ltgray)
	draw_set_font(NORMALFONT)
	draw_text((room_width/2),(room_height/2)-32,"SCORE:"+string(global.points))
}
if(timer>100)
{
	draw_text((room_width/2),(room_height/2)+32,"RANK:")
}

if timer>180
{
	draw_set_font(BIGFONT)
	var tempstring = "D - DOWNRIGHT BOTTOMFEEDER"
	var tempcolor = c_red

	switch grade_get(global.points)
	{
		case 0:
			tempstring = "D - DOWNRIGHT BOTTOMFEEDER"
			tempcolor = c_red
		break;
		case 1:
			tempstring = "C - CODFISH"
			tempcolor = c_orange
		break;
		case 2:
			tempstring = "B - BIG TUNA"
			tempcolor = c_yellow
		break;
		case 3:
			tempstring = "A - APEX PREDATOR"
			tempcolor = c_green
		break;
		case 4:
			tempstring = "S - SUPERSTAR(FISH)"
			tempcolor = c_aqua
		break;
	}

	if(enemiesremaining>=32)
	{
		tempstring = "W - WHALE WHO IS MENTALLY UNWELL"
		var tempcolor = c_orange
	}
	draw_set_color(tempcolor)
	draw_text((room_width/2)+random_range(-1,1),(room_height/2)+96+random_range(-1,1),tempstring)
}