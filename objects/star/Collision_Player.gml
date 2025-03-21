if(global.desert<=0)
{
	global.stars+=1
	if(other.jumps!=other.maxjumps)
	{
		other.jumps=other.maxjumps
		other.flash=6
	}
	
	var tempr = [global.red[1],global.red[2],global.red[0]]
	var tempg = [global.green[1],global.green[2],global.green[0]]
	var tempb = [global.blue[1],global.blue[2],global.blue[0]]

	instance_create_depth(x,y,depth-999,particle,{red,blue,green,sprite_index:stargetspr})

	var walllayer = layer_tilemap_get_id("Tiles_1")
	
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
		sprite_index=portalspr
	}
	if(global.stars mod 8 = 0)
	{
		image_angle=0
		sprite_index=starspr
		play_sound(soundportalopen)
		with(SpawningEnemy){instance_change(mefr,1)}
		with(bubble){visible=0}
		with(BaseEnemy){sprite_index=foodsprite}
		global.red=[Player.red[0]/2,Player.red[1]/2,Player.red[2]/2]
		global.blue=[Player.blue[0]/4,Player.blue[1]/4,Player.blue[2]/4]
		global.green=Player.green
		global.enemycolor=[1,1,1]
		global.enemycolor2=[1,60/255,25/255]
		instance_create_depth(x,0,depth+199,particle,{red,blue:[global.green[0]/3,global.green[1]/3,global.green[2]/3],green,sprite_index:portalopenspr,maxframes:10})
		instance_create_depth(x,0,depth+199,particle,{red,blue:[global.green[0]/3,global.green[1]/3,global.green[2]/3],green,sprite_index:portalopenspr,maxframes:10,image_xscale:-1})
		x-=9999
		global.desert=370
	}
	else
	{
		var avoidme = instance_nearest(x,y,Player)
		spawnenemy(walllayer)
		var restrainingorder = 300
		x=(irandom_range(1,38)*32)+8
		y=(irandom_range(1,21)*32)+8
		while place_meeting(x,y,walllayer) or place_meeting(x,y,SpawningEnemy) or place_meeting(x,y,BaseEnemy) or (abs(x-avoidme.x)<restrainingorder or abs((x+(room_width/2))-avoidme.x)<restrainingorder)
		{
			x=(irandom_range(1,38)*32)+8
			y=(irandom_range(1,21)*32)+8
		}
	}
}