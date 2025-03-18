if(global.desert)
{
	instance_create_depth(x,y,depth-1,particle,{image_xscale:choose(-1,1)})
	if(jumps!=maxjumps)
	{
		jumps=maxjumps
		flash=6
	}
	with other
	{
		instance_create_depth(x,y,depth,corpse,
		{
			sprite_index,
			red:[global.enemycolor2[0],global.enemycolor2[1],global.enemycolor2[2]],
			green:[global.enemycolor[0],global.enemycolor[1],global.enemycolor[2]],
			blue:[global.red[0],global.red[1],global.red[2]],
			yvel:-8
		})
		instance_destroy()
	}
	//increments score
	lavacombo+=1
	var val = 100*lavacombo
	instance_create_depth(other.x,other.y,depth+1,scorenumbers,{value:val})
}
else
{
	if(iframes=0)
	{
		instance_create_depth(x,y,depth-1,particle,{image_xscale:choose(-1,1),green:[1,0,0]})
		var lol = layer_background_get_id("Background")
		layer_background_blend(lol,make_color_rgb(30,0,0))
		if(men>0)
		{
			var dir = point_direction(x,y,other.x,other.y)
			xvel=lengthdir_x(-16,dir)
			yvel=lengthdir_y(-16,dir)
			jumping=0
			men-=1
			anim=0
			iframes=120
		}
		else
		{
			instance_create_depth(x,y,depth,corpse,{sprite_index:StardieSpr,red,green,blue,xvel,yvel:yvel-8})
			instance_destroy()
		}
	}
}