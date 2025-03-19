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

if(desertframes>0)
{
	desertframes-=1
	if(desertframes<=0)or(instance_exists(BaseEnemy)=0)
	{
		play_sound(soundportalclose)
		desertframes=0
		with(EnemySpawner){timer=0}
		with(BaseEnemy){sprite_index=object_get_sprite(object_index)}
		with(bubble){instance_destroy()}
		global.desert=0
		generate_worldcolor()
		x+=9999
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