if(global.desert=0)
{
	var tempr = [global.red[1],global.red[2],global.red[0]]
	var tempg = [global.green[1],global.green[2],global.green[0]]
	var tempb = [global.blue[1],global.blue[2],global.blue[0]]

	instance_create_depth(x+16,y+16,depth-999,particle,{red:tempr,blue:tempb,green:tempg,sprite_index:stargetspr})

	var walllayer = layer_tilemap_get_id("Tiles_1")
	
	with(EnemySpawner)
	{
		timer=0
	}
	
	//increments score
	playcombosound(other.lavacombo)
	other.lavacombo+=1
	var val = 100*other.lavacombo
	other.points+=val
	global.points+=val
	instance_create_depth(x+16,y,depth+1,scorenumbers,{value:val})
	//increments stars
	if(global.stars mod 8 = 7)
	{
		play_sound(soundportalopen)
		with(SpawningEnemy){instance_destroy()}
		with(BaseEnemy){sprite_index=foodsprite}
		x-=9999
		global.desert=1
		desertframes=360
		var divby = 2
		global.red=[106/255,106/255,106/255]
		global.blue=[92/255,.2,0]
		global.green=[1,.8,0]
		global.enemycolor=[1,1,1]
		global.enemycolor2=[1,60/255,25/255]
	}
	else
	{
		var avoidme = instance_nearest(x,y,Player)

		var restrainingorder = 300

		while place_meeting(x,y,walllayer) or place_meeting(x,y,SpawningEnemy) or place_meeting(x,y,BaseEnemy) or (abs(x-avoidme.x)<restrainingorder or abs((x+(room_width/2))-avoidme.x)<restrainingorder)
		{
			x=irandom_range(1,38)*32
			y=irandom_range(1,21)*32
		}
	}
	
	global.stars+=1
	if(other.jumps!=other.maxjumps)
	{
		other.jumps=other.maxjumps
		other.flash=6
	}

}