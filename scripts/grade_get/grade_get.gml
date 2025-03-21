// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function grade_get(_score){
	if(_score>=3200)
	{
		if(_score>=26000)
		{
			if(_score>=104000)
			{
				if(_score=208000)
				{
					return 4
				}
				else
				{
					return 3
				}
			}
			else
			{
				return 2
			}
		}
		else
		{
			return 1
		}
	}
	else
	{
		return 0
	}
}