// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawnenemy(_walllayer){
	var whiteinherit = 0
	
	if(global.stars >= 8)
	{
		if(global.stars >= 16)
		{
			if(global.stars >= 24)
			{
				whiteinherit=1
			}
			else
			{
				if(global.stars mod 2 = 0){whiteinherit=1}
			}
		}
		else
		{
			if(global.stars mod 4 = 0){whiteinherit=1}
		}
	}
	var chosenenemy = choose(EnemyCrab,EnemyParrotfish,EnemyJellyfish)
	x=(irandom_range(1,18)*64)+32
	y=(irandom_range(1,9)*64)+32
	var _w = sprite_get_width(object_get_sprite(chosenenemy))/2
	var _h = sprite_get_height(object_get_sprite(chosenenemy))/2
	
	while collision_rectangle(x-_w,y-_h,x+_w,y+_h,_walllayer,1,1) or collision_rectangle(x-_w,y-_h,x+_w,y+_h,BaseEnemy,1,1) or collision_rectangle(x-_w,y-_h,x+_w,y+_h,SpawningEnemy,1,1) or collision_rectangle(x-_w,y-_h,x+_w,y+_h,Player,1,1)  
	{
		x=(irandom_range(1,18)*64)+32
		y=(irandom_range(1,9)*64)+32
	}
	instance_create_depth(x,y,depth,SpawningEnemy,{mefr:chosenenemy,white:whiteinherit})
}