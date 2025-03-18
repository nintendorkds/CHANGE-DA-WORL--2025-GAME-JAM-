if(global.desert)
{
	instance_create_depth(x,y,depth-1,particle,{image_xscale:choose(-1,1)})
	with other
	{
		var brighten = -.35
		instance_create_depth(x,y,depth,corpse,
		{
			sprite_index,
			red:[clamp(global.enemycolor[0]+brighten,0,1),clamp(global.enemycolor[1]+brighten,0,1),clamp(global.enemycolor[2]+brighten,0,1)],
			green:[global.enemycolor[0],global.enemycolor[1],global.enemycolor[2]],
			blue:[global.red[0],global.red[1],global.red[2]],
			yvel:-8
		})
		instance_destroy()
	}
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