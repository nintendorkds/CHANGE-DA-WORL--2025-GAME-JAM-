if(global.score>0)and(global.desert=0)
{
	if(timer mod 280 = 0)
	{
		var walllayer = layer_tilemap_get_id("Tiles_1")
		var chosenenemy = choose(EnemyCrab,EnemyParrotfish)
		mask_index=object_get_mask(chosenenemy)
		x=(irandom_range(1,19)*64)+32
		y=(irandom_range(1,10)*64)+32
		while(place_meeting(x,y,walllayer))
		{
			x=(irandom_range(1,19)*64)+32
			y=(irandom_range(1,10)*64)+32
		}
		instance_create_depth(x,y,depth,SpawningEnemy,{mefr:chosenenemy})
	}
	timer+=1
}