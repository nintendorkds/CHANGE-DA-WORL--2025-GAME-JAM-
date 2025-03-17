if(global.desert=0)
{
	var tempr = [global.red[1],global.red[2],global.red[0]]
	var tempg = [global.green[1],global.green[2],global.green[0]]
	var tempb = [global.blue[1],global.blue[2],global.blue[0]]

	instance_create_depth(x+16,y+16,depth-999,particle,{red:tempr,blue:tempb,green:tempg,sprite_index:stargetspr})

	var walllayer = layer_tilemap_get_id("Tiles_1")

	var avoidme = instance_nearest(x,y,Player)

	var restrainingorder = 300

	while place_meeting(x,y,walllayer) or (abs(x-avoidme.x)<restrainingorder or abs((x+(room_width/2))-avoidme.x)<restrainingorder)
	{
		x=irandom_range(1,38)*32
		y=irandom_range(1,21)*32
	}


	if(global.score mod 10 = 9)
	{
		with(SpawningEnemy){instance_destroy()}
		x-=9999
		var lol = layer_background_get_id("Background")
		layer_background_blend(lol,c_white)
		global.desert=1
		desertframes=330
		var divby = 2
		global.red=[global.red[0]/divby,global.red[1]/divby,global.red[2]/divby]
		global.blue=[global.green[0]/divby,global.green[1]/divby,global.green[2]/divby]
		global.green=[global.blue[0]/divby,global.blue[1]/divby,global.blue[2]/divby]
		global.enemycolor=[global.enemycolor[0]/divby,global.enemycolor[1]/divby,global.enemycolor[2]/divby]
	}
	global.score+=1
	other.jumps=other.maxjumps
	other.flash=6
}