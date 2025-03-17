if(instance_exists(Player)=0)
{
	deadframes+=1
	if(deadframes mod 3 = 0){behinddeath=[irandom_range(-8,8),irandom_range(-8,8)]}
	var ratio = 60
	global.green=[((global.green[0]*ratio)+1)/(ratio+1),((global.green[1]*ratio)+0)/(ratio+1),((global.green[2]*ratio)+0)/(ratio+1)]
	global.red=[((global.red[0]*ratio)+.6)/(ratio+1),((global.red[1]*ratio)+0)/(ratio+1),((global.red[2]*ratio)+0)/(ratio+1)]
	global.blue=[((global.blue[0]*ratio)+.3)/(ratio+1),((global.blue[1]*ratio)+0)/(ratio+1),((global.blue[2]*ratio)+0)/(ratio+1)]
	global.enemycolor=[((global.enemycolor[0]*ratio)+.8)/(ratio+1),((global.enemycolor[1]*ratio)+0)/(ratio+1),((global.enemycolor[2]*ratio)+0)/(ratio+1)]
}