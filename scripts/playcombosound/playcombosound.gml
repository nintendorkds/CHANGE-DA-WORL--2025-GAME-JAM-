// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playcombosound(_combo){
	var combosound = soundcombo1
	var thresh = 8
	if(_combo>=thresh)
	{
		if(_combo>=thresh*2)
		{
			if(_combo>=thresh*3)
			{
				if(_combo>=thresh*4)
				{
					combosound=soundcombo5
				}
				else
				{
					combosound=soundcombo4
				}
			}
			else
			{
				combosound=soundcombo3
			}
		}
		else
		{
			combosound=soundcombo2
		}
	}
	//sets pitch
	switch (_combo mod 8)
	{
		case 0:
			var pitch = 0
		break;
		case 1:
			var pitch = 2
		break;
		case 2:
			var pitch = 4
		break;
		case 3:
			var pitch = 5
		break;
		case 4:
			var pitch = 7
		break;
		case 5:
			var pitch = 9
		break;
		case 6:
			var pitch = 11
		break;
		case 7:
			var pitch = 12
		break;
	}
	
	play_sound(combosound,0,.4,power(2, (pitch)/12))
	
}