if(instance_exists(Player)=0)
{
	deadframes+=1
	if(deadframes mod 3 = 0){behinddeath=[irandom_range(-8,8),irandom_range(-8,8)]}
	var ratio = 60
	global.green=[((global.green[0]*ratio)+1)/(ratio+1),((global.green[1]*ratio)+0)/(ratio+1),((global.green[2]*ratio)+0)/(ratio+1)]
	global.red=[((global.red[0]*ratio)+.5)/(ratio+1),((global.red[1]*ratio)+0)/(ratio+1),((global.red[2]*ratio)+0)/(ratio+1)]
	global.blue=[((global.blue[0]*ratio)+0)/(ratio+1),((global.blue[1]*ratio)+0)/(ratio+1),((global.blue[2]*ratio)+0)/(ratio+1)]
	global.enemycolor=[((global.enemycolor[0]*ratio)+1)/(ratio+1),((global.enemycolor[1]*ratio)+0)/(ratio+1),((global.enemycolor[2]*ratio)+0)/(ratio+1)]
	global.enemycolor2=[((global.enemycolor2[0]*ratio)+.5)/(ratio+1),((global.enemycolor2[1]*ratio)+0)/(ratio+1),((global.enemycolor2[2]*ratio)+0)/(ratio+1)]
}

if(sprite_index=portalspr)
{
	image_angle+=9
	if(image_angle mod 72 = 0)
	{
		instance_create_depth(x+irandom_range(-32,32),y+irandom_range(-32,32),depth-1,particle,{red,blue,green,sprite_index:stargetspr})
	}
}

if(global.desert>0)
{
	global.desert-=1
	if(global.desert=70)
	{
		play_sound(soundwarning,.2)
	}
	if(global.desert mod 2 = 0)
	{
		var tempr = [global.red[0]/3,global.red[1]/3,global.red[2]/3]
		var tempg = [global.green[0]/3,global.green[1]/3,global.green[2]/3]
		var tempb = [global.blue[0]/3,global.blue[1]/3,global.blue[2]/3]
		instance_create_depth((irandom_range(0,20)*64)+32,(irandom_range(0,11)*64)+32,101,particle,{red:tempr,blue:tempb,green:tempg,sprite_index:stargetspr,image_speed:.6})
	}
	if(global.desert<=0)or(instance_exists(BaseEnemy)=0)
	{
		with(particle)
		{
			if(sprite_index=stargetspr){instance_destroy()}
		}
		play_sound(soundportalclose)
		with(BaseEnemy){sprite_index=object_get_sprite(object_index)}
		with(bubble){instance_destroy()}
		global.desert=0
		generate_worldcolor()
		var walllayer = layer_tilemap_get_id("Tiles_1")
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

if(deadframes>=60)
{
	var contnum = 0
	var pressedabutton = 0
	var started=0
	
	//checks keyboards yaeahsoidyuhoaiuhoaiuhdpioujhapsd
	if(keyboard_check(vk_anykey))
	{
		pressedabutton=1
		if(pressed=0)
		{
			started=1
		}
	}

	contnum+=1

	//checks controleder :) jdnhfolicuhsaj dfpiudcuu
	repeat 8
	{
		if(gamepad_button_check(contnum-1,gp_start))or(gamepad_button_check(contnum-1,gp_face1))or(gamepad_button_check(contnum-1,gp_face2))or(gamepad_button_check(contnum-1,gp_face3))or(gamepad_button_check(contnum-1,gp_face4))
		{
			pressedabutton=1
			if(pressed=0)
			{
				started=1
			}
		}
		contnum+=1
	}
	if(pressedabutton=0){pressed=0}
	
	if(started){room_restart()}
}