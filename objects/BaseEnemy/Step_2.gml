move_wrap(1,1,0)
timer+=1

if(white)
{
	if(timer mod 4 = 1)and(global.desert<=0)
	{
		var divide=2
		var tempr = [global.enemycolor2[0]/divide,global.enemycolor2[1]/divide,global.enemycolor2[2]/divide]
		var tempg = [global.enemycolor[0]/divide,global.enemycolor[1]/divide,global.enemycolor[2]/divide]
		var tempb = [global.red[0]/divide,global.red[1]/divide,global.red[2]/divide]
		instance_create_depth(x,y,depth+1,afterimage,{red:tempr,green:tempg,blue:tempb,image_index:floor(image_index),sprite_index,image_xscale,image_yscale,image_angle})
	}
}
