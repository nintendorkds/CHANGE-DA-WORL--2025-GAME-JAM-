if(iframes=0)
{
	instance_create_depth(x,y,depth-1,particle,{image_xscale:choose(-1,1),green:[1,0,0]})
	instance_create_depth(x,y,depth,corpse,{sprite_index:StardieSpr,red,green,blue,xvel,yvel:yvel-12})
	if(men>0)
	{
		men-=1
		iframes=120
		x=spawnx
		y=spawny
	}
	else
	{
		instance_destroy()
	}
}