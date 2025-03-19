if(global.desert)
{
	instance_create_depth(other.x,other.y,other.depth-1,particle,{image_xscale:choose(-1,1)})
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
			red:[global.enemycolor2[0]/2,global.enemycolor2[1]/2,global.enemycolor2[2]/2],
			green:[global.enemycolor[0]/2,global.enemycolor[1]/2,global.enemycolor[2]/2],
			blue:[global.red[0]/2,global.red[1]/2,global.red[2]/2],
			yvel:-8,
			grav:.8
		})
		instance_destroy()
	}
	play_sound(soundhit,.2)
	//increments score
	playcombosound(lavacombo)
	combowleeway=4
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
			play_sound(soundhurt,.3)
			var dir = point_direction(x,y,other.x,other.y)
			xvel=lengthdir_x(-12,dir)
			yvel=lengthdir_y(-12,dir)
			jumping=0
			men-=1
			anim=0
			iframes=120
		}
		else
		{
			play_sound(sounddeath,.1)
			instance_create_depth(x,y,depth,corpse,{sprite_index:StardieSpr,red,green,blue,xvel,yvel:yvel-8})
			instance_destroy()
		}
	}
}