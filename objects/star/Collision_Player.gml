if(global.desert=0)
{
	var tempr = [global.red[1],global.red[2],global.red[0]]
	var tempg = [global.green[1],global.green[2],global.green[0]]
	var tempb = [global.blue[1],global.blue[2],global.blue[0]]

	instance_create_depth(x+16,y+16,depth-999,particle,{red:tempr,blue:tempb,green:tempg,sprite_index:stargetspr})

	var walllayer = layer_tilemap_get_id("Tiles_1")
	
	//increments score
	other.lavacombo+=1
	var val = 100*other.lavacombo
	other.points+=val
	instance_create_depth(x+16,y,depth+1,scorenumbers,{value:val})
	//increments stars
	if(global.stars mod 10 = 9)
	{
		with(SpawningEnemy){instance_destroy()}
		with(BaseEnemy){sprite_index=foodsprite}
		x-=9999
		global.desert=1
		desertframes=360
		var divby = 2
		global.red=[1,84/255,84/255]//[global.red[0]/divby,global.red[1]/divby,global.red[2]/divby]
		global.blue=[92/255,.2,0]//[global.green[0]/divby,global.green[1]/divby,global.green[2]/divby]
		global.green=[1,.8,0]//[global.blue[0]/divby,global.blue[1]/divby,global.blue[2]/divby]
		global.enemycolor=[1,227/255,228/255]
		global.enemycolor2=[1,148/255,102/255]
	}
	global.stars+=1
	if(other.jumps!=other.maxjumps)
	{
		other.jumps=other.maxjumps
		other.flash=6
	}
	
	var avoidme = instance_nearest(x,y,Player)

	var restrainingorder = 300

	while place_meeting(x,y,walllayer) or (abs(x-avoidme.x)<restrainingorder or abs((x+(room_width/2))-avoidme.x)<restrainingorder)
	{
		x=irandom_range(1,38)*32
		y=irandom_range(1,21)*32
	}

}